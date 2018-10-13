<?php

namespace Botble\Literature\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Literature\Repositories\Interfaces\LiteratureInterface;

class LiteratureCacheDecorator extends CacheAbstractDecorator implements LiteratureInterface
{
    /**
     * @var LiteratureInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * LiteratureCacheDecorator constructor.
     * @param LiteratureInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(LiteratureInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
