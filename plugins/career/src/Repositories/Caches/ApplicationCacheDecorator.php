<?php

namespace Botble\Career\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Career\Repositories\Interfaces\ApplicationInterface;

class ApplicationCacheDecorator extends CacheAbstractDecorator implements ApplicationInterface
{
    /**
     * @var ApplicationInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ApplicationCacheDecorator constructor.
     * @param ApplicationInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(ApplicationInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
