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
use App\Mail\CustomerSent;
use Mail;
use Botble\Gallery\Repositories\Interfaces\GalleryInterface;

class GalleryController extends Controller
{

    /**
     * @var CarrerInterface
     */
    protected $customerRepository;

    /**
     * @var CarrerInterface
     */
    protected $vendorRepository;

    /**
     * @var CarrerInterface
     */
    protected $galleryRepository;

    public function __construct(VendorsInterface $vendor, CustomersInterface $customer, GalleryInterface $gallery)
    {
        $this->customerRepository = $customer;
        $this->vendorRepository   = $vendor;
        $this->galleryRepository   = $gallery;
    }

    /**
     * Show Form Gallery.
     * @param type|null $id 
     * @return view
     */
    public function showGalleryForm()
    {
        $galleries = $this->galleryRepository->getAll();
        return Theme::scope('gallery.index',compact('galleries'))->render();
    }

    /**
     * Show FullScreen Gallery.
     * @param type|null $id 
     * @return view
     */
    public function detailGalleryForm($id = null){

        SeoHelper::setTitle( '' );
        
        $galleries = $this->galleryRepository->all();
        
        $gallery = $galleries->first(function($gallery, $key) use ($id){
            return $gallery->id === (int)$id; //retun gallery with id
        });

        $galleries = $galleries->filter(function($gallery, $key) use ($id){
            return $gallery->id !== (int)$id;
        });

        return Theme::scope('gallery.detail',compact('galleries','gallery'))->render();
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
        Mail::send(new CustomerSent($form));
        
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
        $path = $cv->storeAs('customers', $name);
        $dataForm['attachment'] = $path;
        /* end copy */

        $form = $this->vendorRepository->createOrUpdate($dataForm);

        return redirect()->route('public.services.vendor-package')
                    ->withSuccess(trans('Submit success vendor form.'));

    }

}