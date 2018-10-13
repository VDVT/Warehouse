<?php

namespace Botble\Coreexpertises\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Coreexpertises\Repositories\Interfaces\CoreexpertisesInterface;

class CoreexpertisesRepository extends RepositoriesAbstract implements CoreexpertisesInterface
{
	public function getCoreExpertises()
	{
		$data = $this->model->where('status', 1)
            ->orderBy('coreexpertises.order', 'asc')->get();

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BANNER_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
	}

	public function createSlug($name, $id)
    {
        $slug = str_replace("<br>", " ", $name);
        $slug = str_slug($slug);
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
        $data = $this->model->where(['coreexpertises.status' => $status, 'coreexpertises.slug' => $slug])
            ->select('coreexpertises.*')->first();
        // $data = apply_filters(BASE_FILTER_BEFORE_GET_BY_SLUG, $data, $this->model, 'page');
        $this->resetModel();
        return $data;
    }
}
