<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Botble\Customers\Models\Customers;

class CustomerSent extends Mailable
{
    use Queueable, SerializesModels;

    public $customer;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Customers $customer)
    {
        $this->customer = $customer;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        $amount = $this->customer->is_amount;
        
        if($amount)
        {
            $email = ( !empty(theme_option('amount_more_than_50_email')) )
                    ? explode(',', theme_option('amount_more_than_50_email'))
                    : theme_option('admin_email');
        }
        else
        {
            $email = ( !empty(theme_option('amount_less_than_50_email')) )
                    ? explode(',', theme_option('amount_less_than_50_email'))
                    : theme_option('admin_email');
        }


        return $this->subject( 'New Customer Submission' )
                    ->from( config('mail.from.address'), setting('site_title') )
                    ->to( $email )
                    ->view('theme::mail.customer-form');
    }
}
