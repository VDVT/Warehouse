<?php

namespace Botble\Tabcategory\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Tabcategory\Repositories\Interfaces\TabcategoryInterface;

class TabcategoryCacheDecorator extends CacheAbstractDecorator implements TabcategoryInterface
{
    /**
     * @var TabcategoryInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * TabcategoryCacheDecorator constructor.
     * @param TabcategoryInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(TabcategoryInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }

    /**
     * @param array $condition
     * @return mixed
     * @author Trinh Le
     */
    public function getAllTabs(array $condition = [])
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
