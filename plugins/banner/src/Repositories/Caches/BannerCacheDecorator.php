<?php

namespace Botble\Banner\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Banner\Repositories\Interfaces\BannerInterface;

class BannerCacheDecorator extends CacheAbstractDecorator implements BannerInterface
{
    /**
     * @var BannerInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * BannerCacheDecorator constructor.
     * @param BannerInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(BannerInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
