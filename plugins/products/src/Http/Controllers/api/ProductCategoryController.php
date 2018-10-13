<?php

namespace Botble\Products\Http\Controllers\api;

use Assets;
// use Botble\Products\Repositories\Interfaces\ProductsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Products\Models\ProductCategory;

class ProductCategoryController extends BaseController
{

    public function __construct()
    {
        
    }

    public function getList()
    {
        $product_categories = ProductCategory::where('parent_id', '=', 0)->where('status', '=', 1)->get();
        return response()->json($product_categories);
    }

    
}
