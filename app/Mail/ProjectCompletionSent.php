<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Botble\Projectcompletion\Models\Projectcompletion;

class ProjectCompletionSent extends Mailable
{
    use Queueable, SerializesModels;

    public $projectCompletion;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Projectcompletion $projectCompletion)
    {
        $this->projectCompletion = $projectCompletion;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        $email = ( !empty(theme_option('project_completion_email')) )
                    ? explode(',', theme_option('project_completion_email'))
                    : theme_option('admin_email');

        return $this->subject( 'New Project Completion Submission' )
                    ->from( config('mail.from.address'), setting('site_title') )
                    ->to( $email )
                    ->view('theme::mail.project-completion');
    }
}
