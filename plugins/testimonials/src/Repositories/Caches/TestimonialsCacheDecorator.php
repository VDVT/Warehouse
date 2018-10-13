<?php

namespace Botble\Testimonials\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Support\Services\Cache\CacheInterface;
use Botble\Testimonials\Repositories\Interfaces\TestimonialsInterface;

class TestimonialsCacheDecorator extends CacheAbstractDecorator implements TestimonialsInterface
{
    /**
     * @var TestimonialsInterface
     */
    protected $repository;

    /**
     * @var CacheInterface
     */
    protected $cache;

    /**
     * TestimonialsCacheDecorator constructor.
     * @param TestimonialsInterface $repository
     * @param CacheInterface $cache
     * @author Sang Nguyen
     */
    public function __construct(TestimonialsInterface $repository, CacheInterface $cache)
    {
        $this->repository = $repository;
        $this->cache = $cache;
    }
}
