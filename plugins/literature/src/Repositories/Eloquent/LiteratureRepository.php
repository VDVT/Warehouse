<?php

namespace Botble\Literature\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Literature\Repositories\Interfaces\LiteratureInterface;

class LiteratureRepository extends RepositoriesAbstract implements LiteratureInterface
{
	public function getLiteratures($limit=false, $except=false)
	{
		$data = $this->model->where('literature.status', 1)
            ->orderBy('literature.created_at', 'desc');

        if($except) $data->where('literature.id', '<>', (int)$except);

        if(!$limit)
            $data = $data->get();
        else
        	$data = $data->paginate($limit);

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BANNER_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
	}

    /**
     * func only get literatures for homepage
     * @return collect
     */
    public function getLiteraturesHomepage()
    {
        return $this->getLiteratures(2);
    }
}
