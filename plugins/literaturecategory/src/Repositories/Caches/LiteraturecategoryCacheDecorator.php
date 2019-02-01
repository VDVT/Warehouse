<?php

namespace Botble\Literaturecategory\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Literaturecategory\Repositories\Interfaces\LiteraturecategoryInterface;

class LiteraturecategoryCacheDecorator extends CacheAbstractDecorator implements LiteraturecategoryInterface
{
    /**
     * @var LiteraturecategoryInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * LiteraturecategoryCacheDecorator constructor.
     * @param LiteraturecategoryInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(LiteraturecategoryInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
