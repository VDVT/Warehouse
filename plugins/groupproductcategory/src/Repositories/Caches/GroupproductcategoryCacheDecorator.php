<?php

namespace Botble\Groupproductcategory\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Groupproductcategory\Repositories\Interfaces\GroupproductcategoryInterface;

class GroupproductcategoryCacheDecorator extends CacheAbstractDecorator implements GroupproductcategoryInterface
{
    /**
     * @var GroupproductcategoryInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * GroupproductcategoryCacheDecorator constructor.
     * @param GroupproductcategoryInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(GroupproductcategoryInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
