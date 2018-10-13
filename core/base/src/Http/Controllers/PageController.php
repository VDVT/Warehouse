<?php

namespace Botble\Base\Http\Controllers;

use Botble\Page\Repositories\Interfaces\PageInterface;
use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;
use Assets;
use Botble\Contactaccountmanager\Models\State;
use Illuminate\Http\Request;
use Botble\Contactaccountmanager\Http\Requests\ContactaccountmanagerRequest;
use Botble\Contactaccountmanager\Repositories\Interfaces\ContactaccountmanagerInterface;
use Botble\Contact\Repositories\Interfaces\ContactInterface;
use Botble\Career\Repositories\Interfaces\ApplicationInterface;
use Botble\Career\Repositories\Interfaces\CareerInterface;
use Botble\Faq\Repositories\Interfaces\FaqInterface;
use Botble\Newsletter\Repositories\Interfaces\NewsletterInterface;
use Botble\Donation\Repositories\Interfaces\DonationInterface;
use Botble\Projectcompletion\Repositories\Interfaces\ProjectcompletionInterface;
use App\Mail\ContactAccountManagerSent;
use App\Mail\ContactUsSent;
use App\Mail\ApplicationSent;
use App\Mail\DonationSent;
use App\Mail\ProjectCompletionSent;
use Mail;
use Validator;

class PageController extends Controller
{
    protected $contactaccountmanagerRepository;
    protected $contactRepository;
    protected $applicationRepository;
    protected $careerRepository;
    protected $faqRepository;
    protected $newsletterRepository;
    protected $donationRepository;
    protected $projectcompletionRepository;

    public function __construct(ContactaccountmanagerInterface $contactaccountmanagerRepository, ContactInterface $contactRepository, CareerInterface $careerRepository, ApplicationInterface $applicationRepository, FaqInterface $faqRepository, NewsletterInterface $newsletterRepository, DonationInterface $donationRepository, ProjectcompletionInterface $projectcompletionRepository)
    {
        $this->contactaccountmanagerRepository = $contactaccountmanagerRepository;
        $this->contactRepository = $contactRepository;
        $this->applicationRepository = $applicationRepository;
        $this->careerRepository = $careerRepository;
        $this->faqRepository = $faqRepository;
        $this->newsletterRepository = $newsletterRepository;
        $this->donationRepository = $donationRepository;
        $this->projectcompletionRepository = $projectcompletionRepository;
    }

    public function getAboutUs()
    {
        SeoHelper::setTitle( 'About Us' );
        return Theme::scope('page.about_us')->render();
    }

    public function getContactUs()
    {
        SeoHelper::setTitle( 'Contact Us' );
        return Theme::scope('page.contact_us')->render();
    }
    public function getContactAccountManager()
    {
        SeoHelper::setTitle( 'Get a Quote' );
        $states = State::orderBy('ordering', 'asc')->get()->pluck('name', 'id')->toArray();
        return Theme::scope('page.contact_account_manager', compact('states'))->render();
    }
    public function sendContactAccountManagerSuccess()
    {
        if(!session('send_status')) return redirect()->route('public.page.contactaccountmanager');
        SeoHelper::setTitle( 'Send a quote successfully' );
        return Theme::scope('page.contact_account_manager_success')->render();
    }
    public function postContactAccountManager(Request $request, ContactAccountManagerSent $mailer)
    {
        $find_us_other = explode('@@', theme_option('find_us_need_detail'));
        $find_us_other = array_values(array_filter(array_map('trim', $find_us_other), 'strlen'));
        $find_us_other = implode(',', $find_us_other );

        $validator = Validator::make($request->all(), [
            'title'             => 'max:120',
            'first_name'             => 'required|max:100',
            'last_name'              => 'required|max:100',
            'email'                  => 'required|email|max:100',
            'phone'                  => 'max:50',
            'company_name'           => 'required|max:100',
            'address'                => 'max:150',
            'city'                   => 'max:100',
            'zipcode'                => 'required|max:50',
            'find_us' => 'required|max:30',
            'find_us_other' => 'required_if:find_us,'.$find_us_other,
            'project_square_footage' => 'max:255',
            'message'                => 'max:500'
        ], [
            'find_us_other.required_if' => 'This field is required!'
        ]);

        if ($validator->fails()) {
            return redirect('get-a-quote')
                        ->withErrors($validator)
                        ->withInput();
        }
        if ( $request->isMethod('post') ){
            $contactaccountmanager = $this->contactaccountmanagerRepository->createOrUpdate($request->input());
            Mail::send(new ContactAccountManagerSent($contactaccountmanager));
            return redirect()->route('public.page.contactaccountmanagersuccess')->with('send_status', TRUE);;
        }
    }

    public function postContactUs(Request $request, ContactUsSent $mailer)
    {
        $validator = Validator::make($request->all(), [
            'department'   => 'required|max:50',
            'name'         => 'required|max:60',
            'phone'        => 'required|max:60',
            'email'        => 'required|email|max:150',
            'company_name' => 'required|max:120',
            'content'      => 'required'
        ]);

        if ($validator->fails()) {
            return redirect('contact-us')
                        ->withErrors($validator)
                        ->withInput();
        }
        
        $contact = $this->contactRepository->createOrUpdate($request->input());
        Mail::send(new ContactUsSent($contact));
        return redirect()->route('public.page.contactus')->with('success_msg', 'Your message has been successfully sent.');
    }

    public function getFaq()
    {
        $faqs = $this->faqRepository->getFaqs();
        SeoHelper::setTitle( 'FAQ' );
        return Theme::scope('page.faq', compact('faqs'))->render();
    }

    public function getCareer()
    {
        $careers = $this->careerRepository->getCareers();
        SeoHelper::setTitle( 'Career Opportunities' );
        return Theme::scope('page.career', compact('careers'))->render();
    }

    public function getApplicationForm()
    {
        $states = State::orderBy('ordering', 'asc')->get()->pluck('name', 'id')->toArray();
        $careers = $this->careerRepository->getCareers();
        SeoHelper::setTitle( 'Application Form' );
        return Theme::scope('page.application_form', compact('states', 'careers'))->render();
    }

    public function postApplicationForm(Request $request)
    {
        $data = $request->all();

        $validator = Validator::make($data, [
            'first_name'       => 'required|max:50',
            'last_name'        => 'required|max:50',
            'email'            => 'required|email|max:150',
            'phone'            => 'required|max:20',
            'current_title'    => 'required|max:120',
            'current_company'  => 'required|max:120',
            'position_desired' => 'required|max:120',
            'salary_desired'   => 'required|max:120',
            'city'             => 'required|max:50',
            'state'            => 'required',
            'zipcode'          => 'required|max:20',
            'find_us'          => 'required',
            'contact_me'       => 'required',
            'cv'               => 'required|mimes:doc,pdf,docx',
            'yourself'         => 'required|max:500',
        ], [
            'cv.required' => trans('career::applicationform.required_resume'),
            'cv.mimes' => trans('career::applicationform.error_resume'),
        ]);

        if ($validator->fails()) {
            return redirect('application-form')
                        ->withErrors($validator)
                        ->withInput();
        }

        $cv = $request->cv;
        $name = $request->first_name . '_' . $request->last_name . '_' . date('mdY') . '_' . time() . '.' . $cv->getClientOriginalExtension();
        $path = $cv->storeAs('resume', $name);

        $data['cv'] = $path;
        $data['find_us'] = json_encode($data['find_us']);
        $data['contact_me'] = json_encode($data['contact_me']);
        
        $application = $this->applicationRepository->createOrUpdate($data);
        Mail::send(new ApplicationSent($application));
        return redirect()->route('public.page.applicationform')->with('success_msg', 'Your resume has been successfully sent.');
    }

    public function getDonation()
    {
        SeoHelper::setTitle( 'Donation' );
        return Theme::scope('page.donation')->render();
    }
    public function getDonationForm()
    {
        $states = State::orderBy('ordering', 'asc')->get()->pluck('name', 'id')->toArray();
        SeoHelper::setTitle( 'Donation Form' );
        return Theme::scope('page.donation_form', compact('states'))->render();
    }

    public function postDonationSuccess()
    {
        if(!session('contact_name')) return redirect()->route('public.page.donationform');
        SeoHelper::setTitle( 'Donation Success' );
        return Theme::scope('page.donation_success')->render();
    }

    public function getBlog()
    {
        SeoHelper::setTitle( 'Blog' );
        return Theme::scope('page.blog')->render();
    }

    public function postNewsletter(Request $request)
    {
        if($request->ajax()){
            $validator = Validator::make($request->all(), [
                'email' => 'required|email|max:200'
            ]);

            if ($validator->passes()) {
                $newsletter = $this->newsletterRepository->createOrUpdate($request->all());
                if($newsletter){
                    return response()->json(
                        ['status'=>true, 'msg'=>'Thank you for registering your e-mail with us.']
                    );
                }
            }

            return response()->json(
                ['status'=>false, 'msg'=>$validator->errors()->all()]
            );
        }
    }

    public function postDonation(Request $request)
    {
        $data = $request->all();

        $validator = Validator::make($data, [
            'event_date'          => 'required|max:120',
            'date_donation'       => 'required|max:120',
            'organize'            => 'required|max:150',
            'tax'                 => 'required|max:120',
            'organize_type'       => 'required|max:50',
            'organize_type_other' => 'required_if:organize_type,other|max:150',
            'donation_address'    => 'required|max:150',
            'city'                => 'required|max:50',
            'state'               => 'required',
            'zipcode'             => 'required|max:20',
            'delivery_phone'      => 'required|max:20',
            'contact_name'        => 'required|max:150',
            'contact_phone'       => 'required|max:20',
            'contact_email'       => 'required|email|max:150',
            'event_name'          => 'required|max:120',
            'number_of_attendeee' => 'required|max:120',
            'event_location'      => 'required|max:250',
            // 'salary_desired'      => 'required|max:120',
            'event_description'   => 'required|max:500',
            'donation_request'    => 'required|max:500',
            'promoted'            => 'required|max:500',
            'opportunity'         => 'max:250',
            'radio_where'         => 'required_if:is_radio,1|max:150',
            'tv_where'            => 'required_if:is_tv,1|max:150',
            'print_where'         => 'required_if:is_print,1|max:150',
            'web_where'           => 'required_if:is_web,1|max:150',
            'advertising'         => 'required|max:500'
        ], [
            'organize_type_other.required_if' => 'This Field is required.',
            'radio_where.required_if'         => 'This Field is required.',
            'tv_where.required_if'            => 'This Field is required.',
            'print_where.required_if'         => 'This Field is required.',
            'web_where.required_if'           => 'This Field is required.'
        ]);

        if ($validator->fails()) {
            return redirect('donation-form')
                        ->withErrors($validator)
                        ->withInput();
        }

        $data['opportunity'] = (isset($data['opportunity'])) ? json_encode($data['opportunity']) : '';

        $donation = $this->donationRepository->createOrUpdate($data);
        Mail::send(new DonationSent($donation));
        return redirect()->route('public.page.donationsuccess')->with('contact_name', $data['contact_name']);
    }

    public function getProjectCompletion()
    {

        SeoHelper::setTitle( 'Project Completion' );
        return Theme::scope('page.project_completion')->render();
    }

    public function postProjectCompletion(Request $request)
    {
        $data = $request->all();

        $validator = Validator::make($data, [
            'name'         => 'required|max:120',
            'foreman'      => 'required|max:120',
            'date'         => 'required|max:120',
            'job_number'   => 'required|max:20',
            'company_name' => 'required|max:120',
            'address'      => 'required|max:50',
            'work'         => 'required|max:500',
            'comment'      => 'required|max:500'
        ],[
            'work.required' => 'This description field is required.'
        ]);

        if ($validator->fails()) {
            return redirect('project-completion')
                        ->withErrors($validator)
                        ->withInput();
        }

        $projectCompletion = $this->projectcompletionRepository->createOrUpdate($data);
        Mail::send(new ProjectCompletionSent($projectCompletion));
        return redirect()->route('public.page.project-completion')->with('success_msg', '<p>Your project completion form has been submitted successfully.</p><p>One of our installation managers will be in touch with you shortly.</p>');
    }
}