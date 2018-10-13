<?php

namespace Botble\Newsletter\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Newsletter\Repositories\Interfaces\NewsletterInterface;

class NewsletterCacheDecorator extends CacheAbstractDecorator implements NewsletterInterface
{
    /**
     * @var NewsletterInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * NewsletterCacheDecorator constructor.
     * @param NewsletterInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(NewsletterInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
