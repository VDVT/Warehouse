<?php

namespace Botble\Tabcategory\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface TabcategoryInterface extends RepositoryInterface
{
	/**
     * @param array $condition
     * @return mixed
     * @author Trinh Le
     */
    public function getAllTabs(array $condition = []);
}
