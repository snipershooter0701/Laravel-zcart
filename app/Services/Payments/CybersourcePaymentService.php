<?php

namespace App\Services\Payments;

use Auth;
use App\Order;
use CybersourcePayments;
use Illuminate\Http\Request;
use App\Contracts\PaymentServiceContract;
use Incevio\Cybersource\CybersourceSDK\ApiException;

class CybersourcePaymentService implements PaymentServiceContract
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
	public $card;
	public $sandbox;
	public $billingAddress;
	public $amountObj;
	public $refference;

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
	        $response = CybersourcePayments::processPayment($this->refference, $this->amountObj, $this->billingAddress, $this->card, false);

	        if($response[0]['status'] == 'AUTHORIZED') {
	            $this->success = TRUE;
	        }
    	}
    	catch (Exception $e) {
	        throw new ApiException($response[0]['errorInformation']);
    	}

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

	public function setConfig()
	{
    	if ($this->receiver == 'merchant') {
		    // Get the vendor configs
		    $vendorConfig = $this->order->shop->config->cybersource;

	        $merchant_id = $vendorConfig->merchant_id;
	        $api_key_id = $vendorConfig->api_key_id;
	        $secret = $vendorConfig->secret;
	        $this->sandbox = $vendorConfig->sandbox;
    	}
    	else {
	        $merchant_id = config('services.cybersource.merchant_id');
	        $api_key_id = config('services.cybersource.api_key_id');
	        $secret = config('services.cybersource.secret');
	        $this->sandbox = config('services.cybersource.sandbox');
    	}

        config()->set('cybersource_config.authType', 'http_signature');
        config()->set('cybersource_config.merchantID', $merchant_id);
        config()->set('cybersource_config.apiKeyID', $api_key_id);
        config()->set('cybersource_config.secretKey', $secret);
        config()->set('cybersource_config.mode', 'cyberSource.environment.' . $this->sandbox ? 'SANDBOX' : 'PRODUCTION');

		$this->amountObj = [
            "totalAmount" => get_formated_decimal($this->amount, false, 2),
            "currency"    => get_currency_code()
        ];

        if ($this->order) {
			$this->refference = [
	            "code" => get_platform_title() . " " . trans('app.order') . " " . $this->order->order_number,
	        ];
        }

		$this->setCard();

		$this->setBillingAddress();

		return $this;
	}

	private function setBillingAddress()
	{
        $address = Null;

        if ($this->payee) {
            $address = $this->payee->billingAddress ?? $this->payee->address();
        }

        $country_id = $address ? $address->country_id : $this->request->country_id;
        $state_id = $address && $address->state ? $address->state_id : $this->request->state_id;

        $name = explode(' ', $this->request->cardholder_name);
        $fname = $name[0];
        $lname = count($name) > 1 ? end($name) : $fname;

        $locality = ($address && $address->city) ? $address->city : $this->request->city;

        $this->billingAddress = [
            "firstName"          => $fname,
            "lastName"           => $lname,
            "address1"           => $address ? $address->address_line_1 : $this->request->address_line_1,
            "address2"           => $address ? $address->address_line_2 : $this->request->address_line_2,
            "postalCode"         => $address ? $address->zip_code : $this->request->zip_code,
            "locality"           => $locality ?? get_value_from($state_id, 'states', 'name'),
            "country"            => get_value_from($country_id, 'countries', 'iso_code'),
            "administrativeArea" => $state_id ? get_value_from($state_id, 'states', 'iso_code') : '',
            "phoneNumber"        => $address ? $address->phone : $this->request->phone,
            "email"              => $this->payee ? $this->payee->email : $this->request->email,
        ];

        return $this;
	}

    private function setCard()
    {
        $this->card = [
			            "number"          => $this->request->cnumber,
			            "securityCode"    => $this->request->ccode,
			            "expirationMonth" => $this->request->card_expiry_month,
			            "expirationYear"  => $this->request->card_expiry_year,
			        ];

        return $this;
    }
}
