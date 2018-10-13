<?php

namespace Botble\Industrials\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Industrials\Repositories\Interfaces\IndustrialsInterface;

class IndustrialsRepository extends RepositoriesAbstract implements IndustrialsInterface
{
	public function getIndustrials($limit=false, $except=false)
	{
		$data = $this->model->where('industrials.status', 1)
                     ->orderBy('industrials.order', 'asc');

        if($except) $data->where('id', '<>', (int)$except);
        
        if(!$limit)
            $data = $data->get();
        else
            $data = $data->paginate($limit);

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BANNER_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
	}

	public function createSlug($name, $id)
    {
        $slug = str_slug($name);
        $index = 1;
        $baseSlug = $slug;
        while ($this->model->whereSlug($slug)->where('id', '!=', $id)->count() > 0) {
            $slug = $baseSlug . '-' . $index++;
        }

        if (empty($slug)) {
            $slug = time();
        }

        $this->resetModel();
        return $slug;
    }

    public function getBySlug($slug, $status)
    {
        $data = $this->model->where(['industrials.status' => $status, 'industrials.slug' => $slug])
            ->select('industrials.*')->first();
        // $data = apply_filters(BASE_FILTER_BEFORE_GET_BY_SLUG, $data, $this->model, 'page');
        $this->resetModel();
        return $data;
    }
}
