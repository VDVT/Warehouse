<?php

namespace Botble\Mapsolution\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Mapsolution\Repositories\Interfaces\MapsolutionInterface;

class MapsolutionCacheDecorator extends CacheAbstractDecorator implements MapsolutionInterface
{
    /**
     * @var MapsolutionInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * MapsolutionCacheDecorator constructor.
     * @param MapsolutionInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(MapsolutionInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
