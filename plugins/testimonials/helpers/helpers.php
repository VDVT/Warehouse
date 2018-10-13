<?php

use Botble\Base\Supports\SortItemsWithChildrenHelper;
use Botble\Testimonials\Repositories\Interfaces\TestimonialsInterface;

if (!function_exists('get_testimonials')) {
    function get_testimonials()
    {
        return app(TestimonialsInterface::class)->getTestimonials();
    }
}