<?php

namespace Botble\Industrials\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Industrials\Repositories\Interfaces\IndustrialsInterface;

class IndustrialsCacheDecorator extends CacheAbstractDecorator implements IndustrialsInterface
{
    /**
     * @var IndustrialsInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * IndustrialsCacheDecorator constructor.
     * @param IndustrialsInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(IndustrialsInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
