<?php

namespace App\Http\Requests\Validations;

use App\Customer;
use Auth;
use App\Services\NewCustomer;
use App\Http\Requests\Request;
use App\Common\CanCreateStripeCustomer;

class CheckoutCartRequest extends Request
{
    use CanCreateStripeCustomer;

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return crosscheckCartOwnership($this, $this->route('cart'));
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        if ($this->has('email')
            && $this->has('create-account')
            && $this->has('password')
            && ! Customer::where('email', $this->get('email'))->exists()
        )
        {
            $customer = (new NewCustomer)->save($this);
            $this->merge(['customer_id' => $customer]); //Set customer
        }

       // Create Stripe Customer for future use
        if (
            Auth::guard('customer')->check() &&
            $this->has('remember_the_card') &&
            $this->input('payment_method') == 'stripe'
        ) {
            $this->merge([
                'payee' => $this->createStripeCustomer(),
            ]);
        }

        $rules = [];
        if (! Auth::guard('customer')->check()) {
            $unique_ck = $this->has('create-account') ? '|unique:customers' : '';

            $rules['email'] =  'required|email|max:255' . $unique_ck;
            $rules['password'] =  'required_with:create-account|nullable|confirmed|min:6';
        }

        if('saved_card' != $this->payment_method){
            $rules['payment_method'] = ['required', 'exists:payment_methods,code,enabled,1'];
        }

        return $rules;
    }
}
