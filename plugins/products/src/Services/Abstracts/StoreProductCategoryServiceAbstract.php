<?php

namespace Botble\Products\Services\Abstracts;

use Botble\Products\Models\Products;
use Botble\Products\Repositories\Interfaces\ProductCategoryInterface;
use Illuminate\Http\Request;

abstract class StoreProductCategoryServiceAbstract
{
    /**
     * @var ProductCategoryInterface
     */
    protected $productCategoryRepository;

    /**
     * StoreCategoryServiceAbstract constructor.
     * @param ProductCategoryInterface $productCategoryRepository
     * @author Sang Nguyen
     */
    public function __construct(ProductCategoryInterface $productCategoryRepository)
    {
        $this->productCategoryRepository = $productCategoryRepository;
    }

    /**
     * @param Request $request
     * @param Products $products
     * @return mixed
     * @author Sang Nguyen
     */
    abstract function execute(Request $request, Products $products);
}