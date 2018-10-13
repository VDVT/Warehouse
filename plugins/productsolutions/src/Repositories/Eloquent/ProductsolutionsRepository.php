<?php

namespace Botble\Productsolutions\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Productsolutions\Repositories\Interfaces\ProductsolutionsInterface;

class ProductsolutionsRepository extends RepositoriesAbstract implements ProductsolutionsInterface
{
	public function getProductSolutions()
	{
		$data = $this->model->where('status', 1)
            ->orderBy('productsolutions.order', 'asc')->get();

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
        $data = $this->model->where(['productsolutions.status' => $status, 'productsolutions.slug' => $slug])
            ->select('productsolutions.*')->first();
        // $data = apply_filters(BASE_FILTER_BEFORE_GET_BY_SLUG, $data, $this->model, 'page');
        $this->resetModel();
        return $data;
    }
}
