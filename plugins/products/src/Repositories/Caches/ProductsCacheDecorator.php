<?php

namespace Botble\Products\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Products\Repositories\Interfaces\ProductsInterface;

class ProductsCacheDecorator extends CacheAbstractDecorator implements ProductsInterface
{
    /**
     * @var ProductsInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ProductsCacheDecorator constructor.
     * @param ProductsInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(ProductsInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
