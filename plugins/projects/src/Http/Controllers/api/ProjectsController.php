<?php

namespace Botble\Projects\Http\Controllers\api;

use Assets;
// use Botble\Products\Repositories\Interfaces\ProductsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Projects\Models\Projects;

class ProjectsController extends BaseController
{

    public function __construct()
    {
        
    }

    public function getList()
    {
        $projects = Projects::get();
        return response()->json($projects);
    }

    
}
