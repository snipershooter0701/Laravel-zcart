<?php

namespace App\Services\Payments;

use Auth;
use App\Order;
use Illuminate\Http\Request;
use App\Contracts\PaymentServiceContract;

class StripePaymentService implements PaymentServiceContract
{
	public $success;
	public $request;
	public $payee;
	public $receiver;
	public $stripe_account_id;
	public $token;
	public $order;
	public $amount;
	public $fee;
	public $description;
	public $meta;

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

        \Stripe\Stripe::setApiKey(config('services.stripe.secret'));
	}

	public function setConfig()
	{
		$this->setStripAccountId();

		$this->setStripeToken();

		return $this;
	}

    public function charge()
    {
    	$data = [
            'amount' => get_cent_from_doller($this->amount),
            'currency' => get_currency_code(),
            'description' => $this->description,
            'metadata' => $this->meta,
        ];

		if ($this->chargeSavedCustomer()) {
            $data['customer'] = $this->payee->stripe_id;
		}
		else {
            $data['source'] = $this->token;
		}

        // Set application fee if merchant get paid
        if ($this->receiver == 'merchant' && $this->order && $this->payee instanceof \App\Customer) {

        	// Set platform fee for order if not already set
        	if (! $this->fee) {
				 $this-setPlatformFee(getPlatformFeeForOrder($this->order));
        	}

        	if ($this->fee) {
	            $data['application_fee'] = $this->fee;
        	}
        }

        $result = \Stripe\Charge::create($data, [
            "stripe_account" => $this->stripe_account_id
        ]);

        if ($result->status == 'succeeded') {
            $this->success = TRUE;
        }

		return $this;
    }

	public function setPlatformFee($fee = 0)
	{
		$this->fee = $fee > 0 ? get_cent_from_doller($fee) : 0;

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

    private function setStripeToken()
    {
		if ($this->receiver == 'merchant' && $this->chargeSavedCustomer()) {
            $newToken = \Stripe\Token::create([
              "customer" => $this->payee->stripe_id,
            ], ["stripe_account" => $this->stripe_account_id]);
		}

    	$this->token = isset($newToken) ? $newToken->id : $this->request->cc_token;
    }

	public function setOrderInfo(Order $order)
	{
		$this->order = $order;

		$this->meta = [
            'order_number' => $order->order_number,
            'shipping_address' => strip_tags($order->shipping_address),
            'buyer_note' => $order->buyer_note
		];

		return $this;
	}

    private function setStripAccountId()
    {
        $this->stripe_account_id = $this->order && $this->receiver == 'merchant' ?
        					$this->order->shop->config->stripe->stripe_user_id :
				            config('services.stripe.account_id');
    }

    private function chargeSavedCustomer()
    {
		return $this->payee && $this->payee->hasBillingToken() &&
				$this->request->has('remember_the_card') || $this->request->payment_method == 'saved_card';
    }
}
