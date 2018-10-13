<?php

namespace Botble\Products\Http\Controllers\api;

use Assets;
// use Botble\Products\Repositories\Interfaces\ProductsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Products\Models\Products;

class ProductsController extends BaseController
{

    public function __construct()
    {
        
    }

    public function getList()
    {
        $products = Products::get();
        return response()->json($products);
    }

    
}
