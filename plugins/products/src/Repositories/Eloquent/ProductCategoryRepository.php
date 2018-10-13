<?php

namespace Botble\Products\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Products\Repositories\Interfaces\ProductCategoryInterface;
use Eloquent;
use Illuminate\Support\Collection;

class ProductCategoryRepository extends RepositoriesAbstract implements ProductCategoryInterface
{

    /**
     * @param $name
     * @param $id
     * @return mixed
     * @author Sang Nguyen
     */
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

    /**
     * @param $slug
     * @param $status
     * @return mixed
     * @author Sang Nguyen
     */
    public function getBySlug($slug, $status)
    {
        $data = $this->model->where(['product_categories.status' => $status, 'product_categories.slug' => $slug])
            ->select('product_categories.*')->first();
        $data = apply_filters(BASE_FILTER_BEFORE_GET_BY_SLUG, $data, $this->model, PRODUCT_CATEGORY_MODULE_SCREEN_NAME);
        $this->resetModel();
        return $data;
    }

    /**
     * @return mixed
     * @author Sang Nguyen
     */
    public function getDataSiteMap()
    {
        $data = $this->model->where('product_categories.status', '=', 1)
            ->select('product_categories.*')
            ->orderBy('product_categories.created_at', 'desc');
        $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, PRODUCT_CATEGORY_MODULE_SCREEN_NAME)->get();
        $this->resetModel();
        return $data;
    }

    /**
     * @param $limit
     * @author Sang Nguyen
     */
    public function getFeaturedCategories($limit)
    {
        $data = $this->model->where(['product_categories.status' => 1, 'product_categories.featured' => 1])
            ->select('product_categories.id', 'product_categories.name', 'product_categories.slug', 'product_categories.icon')
            ->orderBy('product_categories.order', 'asc')
            ->select('product_categories.*')
            ->limit($limit);
        $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, PRODUCT_CATEGORY_MODULE_SCREEN_NAME)->get();

        $this->resetModel();
        return $data;
    }

    /**
     * @param array $condition
     * @return mixed
     * @author Sang Nguyen
     */
    public function getAllCategories(array $condition = [])
    {
        $data = $this->model->select('product_categories.*')->orderBy('order', 'asc');
        if (!empty($condition)) {
            $data = $data->where($condition);
        }
        $data = $data->get();

        // $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, PRODUCT_CATEGORY_MODULE_SCREEN_NAME)
        //     ->get();
        $this->resetModel();
        return $data;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getCategoryById($id)
    {
        $data = $this->model->where(['product_categories.id' => $id, 'product_categories.status' => 1]);

        $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, PRODUCT_CATEGORY_MODULE_SCREEN_NAME)->first();

        $this->resetModel();
        return $data;
    }

    /**
     * @param array $select
     * @param array $orderBy
     * @return Collection
     */
    public function getCategories(array $select, array $orderBy)
    {
        $model = $this->model->select($select);
        foreach ($orderBy as $by => $direction) {
            $model = $model->orderBy($by, $direction);
        }
        $data = $model->get();
        $this->resetModel();
        return $data;
    }

    /**
     * @param $id
     * @return array|null
     */
    public function getAllRelatedChildrenIds($id)
    {
        if ($id instanceof Eloquent) {
            $model = $id;
        } else {
            $model = $this->getFirstBy(['product_categories.id' => $id]);
        }
        if (!$model) {
            return null;
        }

        $result = [];

        $children = $model->children()->select('product_categories.id')->get();

        foreach ($children as $child) {
            $result[] = $child->id;
            $result = array_merge($this->getAllRelatedChildrenIds($child), $result);
        }
        $this->resetModel();
        return array_unique($result);
    }
}
