<?php

namespace Botble\Projects\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;

class ProjectsRepository extends RepositoriesAbstract implements ProjectsInterface
{
	public function getProjects($limit=false, $except=false)
	{
		$data = $this->model->where('status', 1)
            ->orderBy('projects.created_at', 'desc');

        if($except) $data->where('projects.id', '<>', (int)$except);

        if(!$limit)
            $data = $data->get();
        else
        	$data = $data->paginate($limit);

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, BANNER_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
	}

	public function getBySlug($slug, $status)
    {
        $data = $this->model->where(['projects.status' => $status, 'projects.slug' => $slug])
            ->select('projects.*')->first();
        // $data = apply_filters(BASE_FILTER_BEFORE_GET_BY_SLUG, $data, $this->model, 'page');
        $this->resetModel();
        return $data;
    }

    public function createSlug($name, $id)
    {
        $slug = str_slug($name);
        $index = 1;
        $baseSlug = $slug;
        while ($this->model->where('slug', $slug)->where('id', '!=', $id)->count() > 0) {
            $slug = $baseSlug . '-' . $index++;
        }

        if (empty($slug)) {
            $slug = time();
        }

        $this->resetModel();

        return $slug;
    }
}
