<?php

namespace Botble\Products\Services;

use Botble\Products\Models\Products;
use Botble\Products\Services\Abstracts\StoreProductCategoryServiceAbstract;
use Illuminate\Http\Request;

class StoreProductCategoryService extends StoreProductCategoryServiceAbstract
{

    /**
     * @param Request $request
     * @param Products $products
     * @author Sang Nguyen
     * @return mixed|void
     */
    public function execute(Request $request, Products $products)
    {
        $categories = $request->input('categories');
        if (!empty($categories)) {
            $products->product_categories()->detach();
            foreach ($categories as $category) {
                $products->product_categories()->attach($category);
            }
        }
    }
}