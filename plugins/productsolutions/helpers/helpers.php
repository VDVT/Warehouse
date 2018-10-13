<?php

use Botble\Base\Supports\SortItemsWithChildrenHelper;
use Botble\Productsolutions\Repositories\Interfaces\ProductsolutionsInterface;

if (!function_exists('get_product_solutions')) {
    function get_product_solutions()
    {
        return app(ProductsolutionsInterface::class)->getProductSolutions();
    }
}
if (!function_exists('trunc')) {
	function trunc($phrase, $max_words) {
	   $phrase_array = explode(' ',$phrase);
	   if(count($phrase_array) > $max_words && $max_words > 0)
	      $phrase = implode(' ',array_slice($phrase_array, 0, $max_words)).'...';
	   return $phrase;
	}
}