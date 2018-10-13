<?php

namespace Botble\Productsolutions\Http\Controllers\api;

use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Productsolutions\Models\Productsolutions;

class ProductSolutionsController extends BaseController
{

    public function __construct(){}

    public function getList()
    {
        $productSolutions = Productsolutions::get();
        return response()->json($productSolutions);
    }

    
}
