<?php

namespace Botble\Base\Http\Controllers;

use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use Botble\Base\Request\SubmitCustomerFormRequest;
use Botble\Base\Request\SubmitVendorFormRequest;
use Botble\Vendors\Repositories\Interfaces\VendorsInterface;
use Botble\Customers\Repositories\Interfaces\CustomersInterface;
use SeoHelper;
use Theme;

class CustomerServiceController extends Controller
{

    /**
     * @var CarrerInterface
     */
    protected $customerRepository;

    /**
     * @var CarrerInterface
     */
    protected $vendorRepository;

    public function __construct(VendorsInterface $vendor, CustomersInterface $customer)
    {
        $this->customerRepository = $customer;
        $this->vendorRepository   = $vendor;
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

        $form = $this->customerRepository->createOrUpdate($dataForm);

        /* SendMail */

        return redirect()->route('public.services.customer-info')
                    ->withSuccess(trans('Submit success customer form.'));

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

    /**
     * Show Vendor Form
     * @return view
     */
    public function submitVendorForm(SubmitVendorFormRequest $request)
    {
        SeoHelper::setTitle( '' );

        $dataForm = $request->all();

        /* copy create application form */
        $cv = $request->attachment;
        $name = $request->vendor_name . '_' . date('mdY') . '_' . time() . '.' . $cv->getClientOriginalExtension();
        $path = $cv->storeAs('resume', $name);
        $data['attachment'] = $path;
        /* end copy */

        $form = $this->vendorRepository->createOrUpdate($dataForm);

        return redirect()->route('public.services.vendor-package')
                    ->withSuccess(trans('Submit success vendor form.'));

    }

}