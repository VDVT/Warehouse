<?php

namespace Botble\CustomerServices\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\CustomerServices\Repositories\Interfaces\CustomerServicesInterface;

class CustomerServicesCacheDecorator extends CacheAbstractDecorator implements CustomerServicesInterface
{
    /**
     * @var CustomerServicesInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * CustomerServicesCacheDecorator constructor.
     * @param CustomerServicesInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(CustomerServicesInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
