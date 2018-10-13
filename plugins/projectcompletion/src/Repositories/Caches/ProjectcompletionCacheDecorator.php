<?php

namespace Botble\Projectcompletion\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Projectcompletion\Repositories\Interfaces\ProjectcompletionInterface;

class ProjectcompletionCacheDecorator extends CacheAbstractDecorator implements ProjectcompletionInterface
{
    /**
     * @var ProjectcompletionInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ProjectcompletionCacheDecorator constructor.
     * @param ProjectcompletionInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(ProjectcompletionInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
