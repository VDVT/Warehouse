<?php

namespace Botble\Tabcategory\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Tabcategory\Repositories\Interfaces\TabcategoryInterface;

class TabcategoryRepository extends RepositoriesAbstract implements TabcategoryInterface
{
	/**
     * @param array $condition
     * @return mixed
     * @author Trinh Le
     */
    public function getAllTabs(array $condition = [])
    {
    	$data = $this->model->select('*');
        if (!empty($condition)) {
            $data = $data->where($condition);
        }

        $data = apply_filters(BASE_FILTER_BEFORE_GET_FRONT_PAGE_ITEM, $data, $this->model, TABCATEGORY_MODULE_SCREEN_NAME)
            ->get();
        $this->resetModel();
        return $data;
    }
}
