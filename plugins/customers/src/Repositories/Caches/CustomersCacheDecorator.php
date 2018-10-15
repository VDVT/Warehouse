<?php

namespace Botble\Customers\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Customers\Repositories\Interfaces\CustomersInterface;

class CustomersCacheDecorator extends CacheAbstractDecorator implements CustomersInterface
{
    /**
     * @var CustomersInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * CustomersCacheDecorator constructor.
     * @param CustomersInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(CustomersInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
