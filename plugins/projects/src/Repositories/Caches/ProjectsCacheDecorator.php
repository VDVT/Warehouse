<?php

namespace Botble\Projects\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;

class ProjectsCacheDecorator extends CacheAbstractDecorator implements ProjectsInterface
{
    /**
     * @var ProjectsInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ProjectsCacheDecorator constructor.
     * @param ProjectsInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(ProjectsInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
