<?php

namespace Botble\Career\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Career\Repositories\Interfaces\CareerInterface;

class CareerCacheDecorator extends CacheAbstractDecorator implements CareerInterface
{
    /**
     * @var CareerInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * CareerCacheDecorator constructor.
     * @param CareerInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(CareerInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
