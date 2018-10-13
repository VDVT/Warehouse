<?php

namespace Botble\Productsolutions\Services;

use Botble\Productsolutions\Models\Productsolutions;
use Botble\Productsolutions\Services\Abstracts\StoreProductCategoryServiceAbstract;
use Illuminate\Http\Request;

class StoreProductCategoryService extends StoreProductCategoryServiceAbstract
{

    /**
     * @param Request $request
     * @param Products $product
     * @author Minh Luu
     * @return mixed|void
     */
    public function execute(Request $request, Productsolutions $productSolution)
    {
        $related_category_products = $request->input('related_product');
        if (!empty($related_category_products)) {
            $productSolution->product_categories()->detach();
            foreach ($related_category_products as $related_category_product) {
                $productSolution->product_categories()->attach($related_category_product);
            }
        }
    }
}