<?php

use Botble\Base\Supports\SortItemsWithChildrenHelper;
use Botble\Products\Repositories\Interfaces\ProductCategoryInterface;

if (!function_exists('get_product_categories_with_children')) {
    /**
     * @return array
     */
    function get_product_categories_with_children()
    {
        $repo = app(ProductCategoryInterface::class);
        $categories = $repo->allBy(['status' => 1], [], ['id', 'name', 'parent_id']);
        $sortHelper = app(SortItemsWithChildrenHelper::class);
        $sortHelper
            ->setChildrenProperty('child_cats')
            ->setItems($categories);
        return $sortHelper->sort();
    }
}