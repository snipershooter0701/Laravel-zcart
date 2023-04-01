<?php

namespace App\Services\Payments;

use Auth;
use App\Order;
use Paypalpayment;
use Illuminate\Http\Request;
use App\Contracts\PaymentServiceContract;

class PaypalExpressPaymentService implements PaymentServiceContract
{
	public $request;
	public $payee;
	public $receiver;
	public $stripe_account_id;
	public $token;
	public $order = Null;
	public $amount = Null;
	public $fee = 0;
	public $description;
	public $meta;
	public $redirectUrls;
	public $transaction;
	public $success;
	public $response;

    public function __construct(Request $request)
	{
		$this->request = $request;

        // Get payee model
        if (Auth::guard('customer')->check()) {
        	$this->setPayee(Auth::guard('customer')->user());
        }
        elseif(Auth::guard('web')->check() && Auth::user()->isMerchant()) {
            $this->setPayee(Auth::user()->owns);
        }
	}

	public function setConfig()
	{
		$this->setPayPalConfig();

		return $this;
	}

    public function charge()
    {
        $payment = Paypalpayment::payment();
        $payment->setIntent("sale")
        ->setPayer($this->payee)
        ->setTransactions([$this->transaction])
        ->setRedirectUrls($this->redirectUrls);

        $payment->create(Paypalpayment::apiContext());

        return redirect()->to($payment->getApprovalLink());
    }

	public function paymentExecution($paymentId, $payerID)
	{
       $payment = Paypalpayment::getById($paymentId, Paypalpayment::apiContext());

        // Execute the payment;
        try {
	        $paymentExecution = Paypalpayment::paymentExecution();
	        $paymentExecution->setPayerId($payerID);
	        $payment->execute($paymentExecution, Paypalpayment::apiContext());

            $this->success = TRUE;
            $this->response = $payment;

	        return $this;
        }
        catch (\PPConnectionException $ex) {
            return $ex;
        }
	}

	public function setPayee($payee)
	{
		$this->payee = $payee;

		return $this;
	}

	public function setAmount($amount)
	{
		$this->amount = format_price_for_paypal($amount);

		return $this;
	}

	public function setDescription($description = '')
	{
		$this->description = $description;

		return $this;
	}

	public function setReceiver($receiver = 'platform')
	{
		$this->receiver = $receiver;

		return $this;
	}

	public function setOrderInfo(Order $order)
	{
		$this->order = $order;

		// $this->meta = [
            // 'order_number' => $order->order_number,
            // 'shipping_address' => strip_tags($order->shipping_address),
            // 'buyer_note' => $order->buyer_note
		// ];

		return $this;
	}

    private function setPayPalItem($title, $unit_price, $quantity = 1, $description = '')
    {
        $tempItem = Paypalpayment::item();

        return $tempItem->setName($title)
        ->setDescription($description)
        ->setQuantity($quantity)
        ->setCurrency(get_currency_code())
        ->setTax($this->order ? format_price_for_paypal($this->order->taxrate): 0)
        ->setPrice(format_price_for_paypal($unit_price));
    }

    private function setPayPalConfig()
    {
    	if ($this->receiver == 'merchant') {
		    // Get the vendor configs
		    $vendorConfig = $this->order->shop->config->paypalExpress;
	        $mode = $vendorConfig->sandbox == 1 ? 'sandbox' : 'live';
	        $client_id = $vendorConfig->client_id;
	        $client_secret = $vendorConfig->secret;
    	}
    	else {
	        $mode = config('services.paypal.sandbox', true) ? 'sandbox' : 'live';
	        $client_id = config('services.paypal.client_id');
	        $client_secret = config('services.paypal.secret');
    	}

        config()->set('paypal_payment.mode', $mode);
        config()->set('paypal_payment.account.client_id', $client_id);
        config()->set('paypal_payment.account.client_secret', $client_secret);

        if ($this->order) {
	        $items = [];
	        foreach ($this->order->inventories as $item) {
	            $items[] = $this->setPayPalItem(
	            				$item->title,
	            				$item->pivot->unit_price,
	            				$item->pivot->quantity,
	            				$item->pivot->item_description
	            			);
	        }

	        $returnUrl = route("payment.success", ['order'=> $this->order->id, 'gateway' => $this->order->paymentMethod->code]);
	        $cancelUrl = route("payment.failed", $this->order->id);

	        $details = Paypalpayment::details();
	        $details->setShipping($this->order->get_shipping_cost())
	        ->setTax($this->order->taxes)
	        ->setGiftWrap($this->order->packaging)->setShippingDiscount($this->order->discount)
	        ->setSubtotal($this->order->calculate_total_for_paypal()); //total of items prices
        }
        else {
            $items[] = $this->setPayPalItem($this->description, $this->amount, 1, $this->description);

	        $returnUrl = route('wallet.deposit.paypal.success');
	        $cancelUrl = route('wallet.deposit.failed');

	        $details = Paypalpayment::details();
	        $details->setShipping(0)->setTax(0)
	        ->setSubtotal($this->amount); //total of items prices
        }

		// Set Items
        $itemList = Paypalpayment::itemList();
        $itemList->setItems($items);

        // Set Redirect Urls
        $redirectUrls = Paypalpayment::redirectUrls();
        $redirectUrls->setReturnUrl($returnUrl)
        ->setCancelUrl($cancelUrl);

        $this->setDescription($details);

        $this->redirectUrls = $redirectUrls;

        $payer = Paypalpayment::payer();
        $this->payee = $payer->setPaymentMethod("paypal");

        //Payment Amount
        $amount = Paypalpayment::amount();
        $amount->setCurrency(get_currency_code())
        ->setTotal($this->order ? $this->order->grand_total_for_paypal() : $this->amount)
        ->setDetails($this->description);

        // ### Transaction
        // A transaction defines the contract of a payment - what is the payment for and who
        // is fulfilling it. Transaction is created with a `Payee` and `Amount` types
        $transaction = Paypalpayment::transaction();
        $this->transaction = $transaction->setAmount($amount)
        ->setItemList($itemList);
        // ->setInvoiceNumber($this->order->order_number)
        // ->setDescription($this->description);
    }
}