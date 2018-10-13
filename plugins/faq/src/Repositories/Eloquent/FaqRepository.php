<?php

namespace Botble\Faq\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Faq\Repositories\Interfaces\FaqInterface;

class FaqRepository extends RepositoriesAbstract implements FaqInterface
{
	public function getFaqs()
	{
		$data = $this->model->where('faq.status', 1)
            ->orderBy('faq.order', 'asc')->get();

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BANNER_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
	}
}
