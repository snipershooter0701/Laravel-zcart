<?php

namespace App;

use Carbon\Carbon;
use Laravel\Cashier\Subscription as CashierSubscription;

class Subscription extends CashierSubscription
{
    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    // protected $appends = ['provider_plan'];

    /**
     * Get the "provider_plan" attribute from the model.
     *
     * @return string
     */
    // public function getProviderPlanAttribute()
    // {
    //     return Spark::billsUsingStripe()
    //                     ? $this->stripe_plan : $this->braintree_plan;
    // }

    /**
     * Determine if the subscription is active.
     *
     * @return bool
     */
    public function active()
    {
        if ($this->provider == 'wallet') {
            return (is_null($this->ends_at) || $this->onGracePeriod());
        }

        return parent::active();
    }

    public function getProviderAttribute()
    {
        return $this->stripe_id ? 'stripe' : 'wallet';
    }
}
