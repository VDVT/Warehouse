<?php

namespace Botble\Productsolutions\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Productsolutions\Repositories\Interfaces\ProductsolutionsInterface;

class ProductsolutionsCacheDecorator extends CacheAbstractDecorator implements ProductsolutionsInterface
{
    /**
     * @var ProductsolutionsInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ProductsolutionsCacheDecorator constructor.
     * @param ProductsolutionsInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(ProductsolutionsInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
