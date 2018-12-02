<?php

namespace Botble\Products\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;
use Illuminate\Support\Collection;

interface ProductsInterface extends RepositoryInterface
{
	/**
     * @param $slug
     * @param $status
     * @return mixed
     * @author Trinh Le
     */
    public function getBySlug($slug, $status);
}
