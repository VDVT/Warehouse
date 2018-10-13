<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Botble\Contactaccountmanager\Models\Contactaccountmanager;

class ContactAccountManagerSent extends Mailable
{
    use Queueable, SerializesModels;

    public $contactaccountmanager;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Contactaccountmanager $contactaccountmanager)
    {
        $this->contactaccountmanager = $contactaccountmanager;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $email = ( !empty(theme_option('contact_account_manager_email')) )
                    ? explode(',', theme_option('contact_account_manager_email'))
                    : theme_option('admin_email');

        return $this->subject( 'New Quote' )
                    ->from( config('mail.from.address'), setting('site_title') )
                    ->to( $email )
                    ->view('theme::mail.contact-account-manager');
    }
}
