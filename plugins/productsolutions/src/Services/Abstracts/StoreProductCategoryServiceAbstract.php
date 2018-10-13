<?php

namespace Botble\Productsolutions\Services\Abstracts;

use Botble\Productsolutions\Models\Productsolutions;
use Illuminate\Http\Request;

abstract class StoreProductCategoryServiceAbstract
{

    public function __construct(){}

    /**
     * @param Request $request
     * @param Productsolutions $productsolutions
     * @return mixed
     * @author Minh Luu
     */
    abstract function execute(Request $request, Productsolutions $productsolutions);
}