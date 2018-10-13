<?php

namespace Botble\Products\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Products\Repositories\Interfaces\ProductsInterface;

class ProductsRepository extends RepositoriesAbstract implements ProductsInterface
{
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

    public function getProductsByAttribute($filters=[])
    {
        $data = $this->model->select('products.*')->where('products.status', '=', 1)
            ->join('product_product_category', 'product_product_category.products_id', '=', 'products.id')
            ->where('product_product_category.product_category_id', '=', $filters['category_id']);

        foreach ($filters as $key => $value) {
            if(trim($value) != '' && $key != '_token' && $key != 'category_id')
                $data->where('products.'.$key, '=', trim($value));
        }

        return $data->get();
    }
}
