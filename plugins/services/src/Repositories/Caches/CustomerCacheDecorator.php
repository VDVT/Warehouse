<?php

namespace Botble\Services\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Services\Repositories\Interfaces\CustomerInterface;

class CustomerCacheDecorator extends CacheAbstractDecorator implements CustomerInterface
{
    /**
     * @var ServicesInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ServicesCacheDecorator constructor.
     * @param ServicesInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(CustomerInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
