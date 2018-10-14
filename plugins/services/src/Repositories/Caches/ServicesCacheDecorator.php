<?php

namespace Botble\Services\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Services\Repositories\Interfaces\ServicesInterface;

class ServicesCacheDecorator extends CacheAbstractDecorator implements ServicesInterface
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
    public function __construct(ServicesInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
