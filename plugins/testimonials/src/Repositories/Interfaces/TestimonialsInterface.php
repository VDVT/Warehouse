<?php

namespace Botble\Testimonials\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface TestimonialsInterface extends RepositoryInterface
{
	public function getTestimonials();
}
