<?php

namespace Botble\Faq\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Faq\Repositories\Interfaces\FaqInterface;

class FaqCacheDecorator extends CacheAbstractDecorator implements FaqInterface
{
    /**
     * @var FaqInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * FaqCacheDecorator constructor.
     * @param FaqInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(FaqInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
