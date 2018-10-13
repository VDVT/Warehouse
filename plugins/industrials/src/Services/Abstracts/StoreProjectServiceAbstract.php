<?php

namespace Botble\Industrials\Services\Abstracts;

use Botble\Industrials\Models\Industrials;
use Illuminate\Http\Request;

abstract class StoreProjectServiceAbstract
{

    public function __construct(){}

    /**
     * @param Request $request
     * @param Industrials $industials
     * @return mixed
     * @author Minh Luu
     */
    abstract function executeProject(Request $request, Industrials $industials);
}