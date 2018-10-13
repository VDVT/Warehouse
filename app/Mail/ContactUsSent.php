<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Botble\Contact\Models\Contact;

class ContactUsSent extends Mailable
{
    use Queueable, SerializesModels;

    public $contact;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Contact $contact)
    {
        $this->contact = $contact;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        if( $this->contact->department == 'customer-service' ){
            $emails = (!empty(theme_option('customer_service_email')))
                        ? explode(',', theme_option('customer_service_email')) : theme_option('admin_email');
        } else if( $this->contact->department == 'order-inquires' ){
            $emails = (!empty(theme_option('order_inquires_email')))
                        ? explode(',', theme_option('order_inquires_email')) : theme_option('admin_email');
        } else if( $this->contact->department == 'part-request' ){
            $emails = (!empty(theme_option('part_request_email')))
                        ? explode(',', theme_option('part_request_email')) : theme_option('admin_email');
        } else if( $this->contact->department == 'sale-quote' ){
            $emails = (!empty(theme_option('sale_quote_email')))
                        ? explode(',', theme_option('sale_quote_email')) : theme_option('admin_email');
        } else if( $this->contact->department == 'photo-submission' ){
            $emails = (!empty(theme_option('photo_submission_email')))
                        ? explode(',', theme_option('photo_submission_email')) : theme_option('admin_email');
        }

        return $this->subject( 'New Contact' )
                    ->from( config('mail.from.address'), setting('site_title') )
                    ->to( $emails )
                    ->view('theme::mail.contact-us');
    }
}
