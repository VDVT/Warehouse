<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Botble\Vendors\Models\Vendors;

class VendorSent extends Mailable
{
    use Queueable, SerializesModels;

    public $vendorForm;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Vendors $vendorForm)
    {
        $this->vendorForm = $vendorForm;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $email = ( !empty(theme_option('vendor_form_email')) )
                    ? explode(',', theme_option('vendor_form_email'))
                    : theme_option('admin_email');

        $file = $this->includeAttachment();
        if($file)
            return $this->subject( 'New Vendor Submission' )
                    ->from( config('mail.from.address'), setting('site_title') )
                    ->to( $email )
                    ->attach($file['path'], $file['option'])
                    ->view('theme::mail.vendor-form');

        return $this->subject( 'New Vendor Submission' )
                    ->from( config('mail.from.address'), setting('site_title') )
                    ->to( $email )
                    ->view('theme::mail.vendor-form');
    }


    /**
     * Include attachment vendor form to email
     * @param type $filePath 
     * @return type
     */
    protected function includeAttachment()
    {
        $filePath = public_path('uploads/'.$this->vendorForm->attachment);

        if(file_exists($filePath))
        {
            return [
                'path' => $filePath,
                'option' => [
                    'as' => pathinfo($filePath, PATHINFO_BASENAME),
                    'mime' => mime_content_type($filePath)
                ]
            ];
        }        
    }
}