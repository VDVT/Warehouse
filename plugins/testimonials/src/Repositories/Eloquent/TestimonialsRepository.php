<?php

namespace Botble\Testimonials\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Testimonials\Repositories\Interfaces\TestimonialsInterface;

class TestimonialsRepository extends RepositoriesAbstract implements TestimonialsInterface
{
	public function getTestimonials()
	{
		$data = $this->model->where('testimonials.status', 1)
		    ->orderBy('testimonials.created_at', 'desc')->get();

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BANNER_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
	}
}
