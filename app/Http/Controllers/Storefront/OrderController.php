<?php

namespace App\Http\Controllers\Storefront;

use DB;
use Auth;
use App\Cart;
use App\Order;
use App\PaymentMethod;
use Illuminate\Http\Request;
use App\Events\Order\OrderCreated;
use App\Http\Controllers\Controller;
use Illuminate\Http\RedirectResponse;
use App\Http\Requests\Validations\OrderDetailRequest;
use App\Http\Requests\Validations\CheckoutCartRequest;
use App\Http\Requests\Validations\ConfirmGoodsReceivedRequest;

use App\Contracts\PaymentServiceContract as PaymentService;
use App\Services\Payments\PaypalExpressPaymentService;

class OrderController extends Controller
{

    // private $orderConfirmed;

    /**
     * Checkout the specified cart.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(CheckoutCartRequest $request, Cart $cart, PaymentService $paymentService)
    {
        $cart = crosscheckAndUpdateOldCartInfo($request, $cart);

        // Get shipping address
        if(is_numeric($request->ship_to)) {
            $address = \App\Address::find($request->ship_to)->toHtml('<br/>', False);
        }
        else {
            $address = get_address_str_from_request_data($request);
        }

        // Push shipping address into the request
        $request->merge(['shipping_address' => $address]);

        // Start transaction!
        DB::beginTransaction();

        try {
            // Create the order
            $order = saveOrderFromCart($request, $cart);

            $receiver = vendor_get_paid_directly() ? 'merchant' : 'platform';

            $response = $paymentService->setReceiver($receiver)
                ->setOrderInfo($order)
                ->setAmount($order->grand_total)
                ->setDescription(trans('app.purchase_from', ['marketplace' => get_platform_title()]))
                ->setConfig()
                ->charge();

            // Check if the result is a RedirectResponse of Paypal and some other gateways
            if($response instanceof RedirectResponse) {
                // Everything is fine. Now commit the transaction
                DB::commit();

                // Delete the cart
                $cart->forceDelete();

                return $response;
            }
            // Payment succeed
            else if($response->success) {
                // Order confirmed
                // $this->orderConfirmed = True;

                if($order->paymentMethod->type !== PaymentMethod::TYPE_MANUAL) {
                    // Order has been paid
                    $order->markAsPaid();
                }

                // Everything is fine. Now commit the transaction
                DB::commit();

                // Delete the cart
                $cart->forceDelete();

                // Trigger the Event
                event(new OrderCreated($order));

                return view('theme::order_complete', compact('order'))->with('success', trans('theme.notify.order_placed'));
            }

            throw new \Exception("Error Manual Payment Processing Request");
        }
        catch (\Exception $e) {
            DB::rollback(); // rollback the transaction and log the error

            \Log::error('Payment failed:: '.$e->getMessage());

            DB::rollback(); // rollback the transaction

            return redirect()->back()->with('error', $e->getMessage())->withInput();
            // return redirect()->back()->with('error', trans('theme.notify.order_creation_failed'))->withInput();
        }
    }

    /**
     *
     */
    public function paymentGatewaySuccessResponse(Request $request, $order, $gateway)
    {
        if ($this->verifyPaymentGatewayCalls($request, $gateway))
        {
            if ($gateway == 'paypal-express') {
                try {
                    $paymentService = new PaypalExpressPaymentService($request);

                    $result = $paymentService->paymentExecution($request->get('paymentId'), $request->get('PayerID'));

                    if (! $result->success) {
                        return redirect()->route("payment.failed", $order);
                    }
                }
                catch (\Exception $e) {
                    \Log::error('Payment failed on paypalPaymentSuccess method:: ');
                    \Log::info($e->getMessage());
                }

            }

            if(! $order instanceOf Order) {
                $order = Order::findOrFail($order);
            }

            // Order confirmed
            // $this->orderConfirmed = True;

            $order->markAsPaid();

            // Trigger the Event
            event(new OrderCreated($order));

            return view('theme::order_complete', compact('order'))->with('success', trans('theme.notify.order_placed'));
        }

        return redirect()->route("payment.failed", $order);
    }

    public function paymentFailed(Request $request, $order)
    {
        $cart = moveAllItemsToCartAgain($order, true);

        return redirect()->route('cart.checkout', $cart)->with('error', trans('theme.notify.payment_failed'))->withInput();
    }

    /**
     * Confirm the order
     */
    // private function markOrderAsConfirmed($order)
    // {
    //     if(! $order instanceOf Order) {
    //         $order = Order::find($order);
    //     }

    //     if($order->order_status_id < Order::STATUS_CONFIRMED) {
    //         $order->order_status_id = Order::STATUS_CONFIRMED;
    //         $order->save();
    //     }

    //     if (! vendor_get_paid_directly()) {
    //         $fee = getPlatformFeeForOrder($order);

    //         // Charge the application fee
    //         if ($fee > 0) {
    //             $meta = [
    //                 'type' => trans('app.platform_fee', ['for' => $order->order_number]),
    //                 'description' => trans('app.order_number') . ': ' . $order->order_number,
    //                 'order_id' => $order->id
    //             ];

    //             $order->shop->withdraw($fee, $meta, true);
    //         }
    //     }

    //     // Trigger the Event
    //     event(new OrderCreated($order));

    //     return $order;
    // }

    /**
     * MarkOrderAsPaid
     */
    // private function markOrderAsPaid($order)
    // {
    //     if(! $order instanceOf Order) {
    //         $order = Order::find($order);
    //     }

        // $order->payment_status = Order::PAYMENT_STATUS_PAID;
        // $order->save();

        // if (! vendor_get_paid_directly()) {
        //     // Deposit the order amount into vendor's wallet
        //     $meta = [
        //         'type' => trans('app.for_sale_of', ['order' => $order->order_number]),
        //         'description' => trans('app.order_number') . ': ' . $order->order_number,
        //         'order_id' => $order->id
        //     ];


        //     $order->shop->deposit($order->grand_total, $meta, true);
        // }

        // if ($this->orderConfirmed) {
        //     $this->markOrderAsConfirmed($order);
        // }

        // event(new OrderPaid($order));

        // return $order->markAsPaid();
    // }

    /**
     * Display order detail page.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Order   $order
     *
     * @return \Illuminate\Http\Response
     */
    public function detail(OrderDetailRequest $request, Order $order)
    {
        $order->load(['inventories.image','conversation.replies.attachments']);

        return view('theme::order_detail', compact('order'));
    }

    /**
     * Buyer confirmed goods received
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Order   $order
     *
     * @return \Illuminate\Http\Response
     */
    public function goods_received(ConfirmGoodsReceivedRequest $request, Order $order)
    {
        $order->mark_as_goods_received();

        return redirect()->route('order.feedback', $order)->with('success', trans('theme.notify.order_updated'));
    }

    /**
     * Display the specified resource.
     *
     * @param  App\Order   $order
     * @return \Illuminate\Http\Response
     */
    public function invoice(Order $order)
    {
        // $this->authorize('view', $order); // Check permission

        $order->invoice('D'); // Download the invoice
    }

    /**
     * Track order shippping.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Order   $order
     *
     * @return \Illuminate\Http\Response
     */
    public function track(Request $request, Order $order)
    {
        return view('theme::order_tracking', compact('order'));
    }

    /**
     * Order again by moving all items into th cart
     */
    public function again(Request $request, Order $order)
    {
        $cart = moveAllItemsToCartAgain($order);

        return redirect()->route('cart.checkout', $cart)->with('success', trans('theme.notify.cart_updated'));
    }

    private function verifyPaymentGatewayCalls(Request $request, $gateway)
    {
        switch ($gateway) {
            case 'paypal-express':
                return $request->has('token') && $request->has('paymentId') && $request->has('PayerID');

            case 'instamojo':
                return $request->payment_status == 'Credit' && $request->has('payment_request_id') && $request->has('payment_id');

            case 'paystack':
                return $request->has('trxref') && $request->has('reference');
        }

        return false;
    }

    private function logErrors($error, $feedback)
    {
        \Log::error($error);

        // Set error messages:
        // $error = new \Illuminate\Support\MessageBag();
        // $error->add('errors', $feedback);

        return $error;
    }
}