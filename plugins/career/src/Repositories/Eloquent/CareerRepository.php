<?php

namespace Botble\Career\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Career\Repositories\Interfaces\CareerInterface;

class CareerRepository extends RepositoriesAbstract implements CareerInterface
{
	public function getCareers($limit=false, $except=false)
	{
		$data = $this->model->where('status', 1)
            ->orderBy('career.order', 'asc');

        if($except) $data->where('career.id', '<>', (int)$except);

        if(!$limit)
            $data = $data->get();
        else
        	$data = $data->paginate($limit);

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BANNER_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
	}
}
