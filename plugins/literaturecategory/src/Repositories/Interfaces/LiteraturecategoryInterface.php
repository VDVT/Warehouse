<?php

namespace Botble\Literaturecategory\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface LiteraturecategoryInterface extends RepositoryInterface
{
	/**
     * @param array $condition
     * @return mixed
     * @author Trinh Le
     */
    public function getAllTabs(array $condition = []);
}
