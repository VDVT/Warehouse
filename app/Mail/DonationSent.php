<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Botble\Donation\Models\Donation;

class DonationSent extends Mailable
{
    use Queueable, SerializesModels;

    public $donation;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Donation $donation)
    {
        $this->donation = $donation;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        $email = ( !empty(theme_option('donation_email')) )
                    ? explode(',', theme_option('donation_email'))
                    : theme_option('admin_email');

        return $this->subject( 'New Donation Request' )
                    ->from( config('mail.from.address'), setting('site_title') )
                    ->to( $email )
                    ->view('theme::mail.donation');
    }
}
