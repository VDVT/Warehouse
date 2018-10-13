<?php

namespace Botble\Coreexpertises\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Coreexpertises\Repositories\Interfaces\CoreexpertisesInterface;

class CoreexpertisesCacheDecorator extends CacheAbstractDecorator implements CoreexpertisesInterface
{
    /**
     * @var CoreexpertisesInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * CoreexpertisesCacheDecorator constructor.
     * @param CoreexpertisesInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(CoreexpertisesInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
