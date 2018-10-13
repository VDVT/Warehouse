<?php

namespace Botble\Contactaccountmanager\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Contactaccountmanager\Repositories\Interfaces\ContactaccountmanagerInterface;

class ContactaccountmanagerCacheDecorator extends CacheAbstractDecorator implements ContactaccountmanagerInterface
{
    /**
     * @var ContactaccountmanagerInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * ContactaccountmanagerCacheDecorator constructor.
     * @param ContactaccountmanagerInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(ContactaccountmanagerInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
