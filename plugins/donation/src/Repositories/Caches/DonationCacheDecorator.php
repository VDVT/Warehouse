<?php

namespace Botble\Donation\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Donation\Repositories\Interfaces\DonationInterface;

class DonationCacheDecorator extends CacheAbstractDecorator implements DonationInterface
{
    /**
     * @var DonationInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * DonationCacheDecorator constructor.
     * @param DonationInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(DonationInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
