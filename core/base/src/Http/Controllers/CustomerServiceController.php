<?php

namespace Botble\Base\Http\Controllers;

use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use SeoHelper;
use Theme;

class CustomerServiceController extends Controller
{
    public function __construct()
    {
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
     * Show Customer Form
     * @return view
     */
    public function showCustomerForm()
    {
        SeoHelper::setTitle( '' );
        return Theme::scope('services.customer-info')->render();
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