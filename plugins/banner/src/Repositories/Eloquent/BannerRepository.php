<?php

namespace Botble\Banner\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Banner\Repositories\Interfaces\BannerInterface;

class BannerRepository extends RepositoriesAbstract implements BannerInterface
{
	public function getBanners()
	{
		$data = $this->model->where('banner.status', 1)
            ->orderBy('banner.order', 'asc')->get();

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BANNER_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
	}
}
