<?php

namespace Botble\Base\Http\Controllers;

use Botble\Productsolutions\Repositories\Interfaces\ProductsolutionsInterface;
use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;

class ProductSolutionController extends Controller
{
	public function details($slug, ProductsolutionsInterface $productSolutionsRepository)
    {
        $product_solution = $productSolutionsRepository->getBySlug($slug, true);
        if (empty($product_solution)) abort(404);
        $seo = get_meta_data($product_solution->id, 'seo_meta', PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, true);
        if(!empty($seo))
            SeoHelper::setTitle($seo['seo_title'])->setDescription($seo['seo_description'])->setKeywords($seo['seo_keyword']);

        return Theme::scope('product-solution.details', compact('product_solution'))->render();
    }
}