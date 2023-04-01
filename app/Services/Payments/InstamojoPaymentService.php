<?php

namespace App\Services\Payments;

use Auth;
use App\Order;
use Instamojo\Instamojo;
use Illuminate\Http\Request;
use App\Contracts\PaymentServiceContract;

class InstamojoPaymentService implements PaymentServiceContract
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
	public $instamojoReguest;
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
    	try {
	        $response = $this->instamojoReguest->paymentRequestCreate([
                        "purpose" => $this->description,
                        "amount" => $this->amount,
                        "buyer_name" => $this->payee ? $this->payee->getName() : $this->request->address_title,
                        "email" =>  $this->payee ? $this->payee->email : $this->request->email,
                        "phone" => $this->payee ? '' : $this->request->phone,
                        "redirect_url" => $this->redirectUrl,
                        "send_email" => true,
                    ]);
    	} catch (Exception $e) {
	        return $e;
    	}

        return redirect()->to($response['longurl']);
    }

	public function setPayee($payee)
	{
		$this->payee = $payee;

		return $this;
	}

	public function setAmount($amount)
	{
		$this->amount = number_format($amount, 2, '.', '');

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
	    // Get the vendor configs
    	if ($this->receiver == 'merchant') {
		    $vendorConfig = $this->order->shop->config->instamojo;

	        $api_key = $vendorConfig->api_key;
	        $auth_token = $vendorConfig->auth_token;
	        $this->sandbox = $vendorConfig->sandbox;
    	}
    	else {
	        $api_key = config('services.instamojo.api_key');
	        $auth_token = config('services.instamojo.auth_token');
	        $this->sandbox = config('services.instamojo.sandbox');
    	}

        $this->instamojoReguest = new Instamojo(
        		$api_key, $auth_token,
        		$this->sandbox == 1 ? 'https://test.instamojo.com/api/1.1/' : 'https://instamojo.com/api/1.1/'
        	);

        if ($this->order) {
			$this->redirectUrl = route('payment.success', ['order' => $this->order, 'gateway' => $this->order->paymentMethod->code]);
        }
        else {
        	$this->redirectUrl = route('wallet.deposit.paypal.success');
        }

		return $this;
	}
}
