<?php

namespace Botble\Vendors\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Vendors\Repositories\Interfaces\VendorsInterface;

class VendorsCacheDecorator extends CacheAbstractDecorator implements VendorsInterface
{
    /**
     * @var VendorsInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * VendorsCacheDecorator constructor.
     * @param VendorsInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(VendorsInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
