<?php

namespace App\Services\Payments;

use Auth;
use App\Order;
use Illuminate\Http\Request;
use App\Contracts\PaymentServiceContract;
use Yabacon\Paystack\Exception\ApiException;

class PaystackPaymentService implements PaymentServiceContract
{
	public $success;
	public $request;
	public $payee;
	public $receiver;
	public $order;
	public $amount;
	public $fee;
	public $description;
	public $meta;
	public $sandbox;
	public $redirectUrl;

   public function __construct(Request $request)
	{
		$this->request = $request;

        // Get payee model
        if ($this->request->has('payee')){
	        $this->setPayee($this->request->payee);
        }
        elseif(Auth::guard('customer')->check()) {
        	$this->setPayee(Auth::guard('customer')->user());
        }
        elseif(Auth::guard('web')->check() && Auth::user()->isMerchant()) {
            $this->setPayee(Auth::user()->owns);
        }
	}

    public function charge()
    {
        return redirect()->to($this->tranx->data->authorization_url);
    }

	public function setPayee($payee)
	{
		$this->payee = $payee;

		return $this;
	}

	public function setAmount($amount)
	{
		$this->amount = $amount;

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

		return $this;
	}

	public function setConfig()
	{
		$this->setCallbackUrl();

    	if ($this->receiver == 'merchant') {
		    // Get the vendor configs
		    $vendorConfig = $this->order->shop->config->paystack;

    		$secret = $vendorConfig->secret;
    		$this->sandbox = $vendorConfig->sandbox;
    	}
    	else {
    		$secret = config('services.paystack.secret');
    		$this->sandbox = config('services.paystack.sandbox');
    	}

        $meta = $this->order ? [
                'order_number' => $this->order->order_number,
                'custom_fields'=> [
                    [
                        'display_name'=> "Order Number",
                        'variable_name'=> "order_number",
                        'value'=> $this->order->order_number
                    ],[
                        'display_name'=> "Shipping Address",
                        'variable_name'=> "shipping_address",
                        'value'=> $this->order->order_number
                    ]
                ]
            ] : [];

        $data = [
            'email' => $this->request->email ?? $this->payee->email,
            'amount' => get_cent_from_doller($this->amount),
            'quantity' => $this->order ? $this->order->quantity : 1,
            'orderID' => $this->order ? $this->order->id : Null,
            'callback_url' => $this->redirectUrl,
            'metadata'=>json_encode($meta)
        ];

        $paystack = new \Yabacon\Paystack($secret);
        $tranx = $paystack->transaction->initialize($data);

        if(! $tranx->status) {
            throw new ApiException;
        }

        $this->tranx = $tranx;

        return $this;
	}

    private function setCallbackUrl()
    {
    	$this->redirectUrl = $this->order ?
    				route('payment.success', ['order' => $this->order, 'gateway' => $this->order->paymentMethod->code]) :
    				route('wallet.deposit.paystack.success');
	}

    /**
     * Verify Payment
     * @param $reference
     * @return mixed
     */
    public function verify($reference)
    {
        $secret = config('services.paystack.secret');
        $paystack = new \Yabacon\Paystack($secret);
        return $paystack->transaction->verify(['reference' => $reference]);
	}

}
