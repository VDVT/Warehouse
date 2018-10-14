<?php

namespace Botble\Base\Http\Controllers;

use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use Botble\Services\Repositories\Interfaces\CustomerInterface;
use Botble\Base\Request\SubmitCustomerFormRequest;
use SeoHelper;
use Theme;

class CustomerServiceController extends Controller
{

    /**
     * @var CarrerInterface
     */
    protected $customerRepository;

    public function __construct(CustomerInterface $customerRepository)
    {
        $this->customerRepository = $customerRepository;
    }

    /**
     * Show Carrer Form
     * @return view
     */
    public function showCarrerForm()
    {
        SeoHelper::setTitle( '' );
        return Theme::scope('services.carrer-oppotunities')->render();
    }

    /**
     * Show Carrer Form
     * @return view
     */
    public function submitCarrerForm(Request $request)
    {
        SeoHelper::setTitle( '' );

        $dataForm = $request->all();

        // $this->carrerRepository->create($dataForm);

        return redirect()->back()->with('success_msg', 'Your message has been successfully sent.');
    }

    /**
     * Show Customer Form
     * @return view
     */
    public function showCustomerForm()
    {
        SeoHelper::setTitle( '' );
        return Theme::scope('services.customer-info')->render();
    }

    /**
     * Show Customer Form
     * @return view
     */
    public function submitCustomerForm(SubmitCustomerFormRequest $request)
    {
        SeoHelper::setTitle( '' );
        
        $dataForm = $request->all();
        $form = $this->customerRepository->create($dataForm);

        /* SendMail */

        return redirect()->back()->with('success_msg', 'Your message has been successfully sent.');
    }

    /**
     * Show Vendor Form
     * @return view
     */
    public function showVendorForm()
    {
        SeoHelper::setTitle( '' );
        return Theme::scope('services.vendor-package')->render();
    }

}