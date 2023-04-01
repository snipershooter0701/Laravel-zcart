<?php

namespace App\Services\Payments;

use Auth;
use App\Order;
use Illuminate\Http\Request;
use App\Contracts\PaymentServiceContract;

class WirePaymentService implements PaymentServiceContract
{
	public $success;
	public $request;
	public $payee;
	public $receiver;
	public $order;
	public $amount;
	// public $fee;
	public $description;


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

	public function setConfig()
	{
		// Nothing to set
		return $this;
	}

    public function charge()
    {
        $this->success = TRUE;

    	return $this;
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
}
