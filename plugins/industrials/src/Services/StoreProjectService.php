<?php

namespace Botble\Industrials\Services;

use Botble\Industrials\Models\Industrials;
use Botble\Industrials\Services\Abstracts\StoreProjectServiceAbstract;
use Illuminate\Http\Request;

class StoreProjectService extends StoreProjectServiceAbstract
{

    /**
     * @param Request $request
     * @param Products $product
     * @author Minh Luu
     * @return mixed|void
     */
    public function executeProject(Request $request, Industrials $industrials)
    {
        $recent_projects = $request->input('recent_project');
        if (!empty($recent_projects)) {
            $industrials->projects()->detach();
            foreach ($recent_projects as $recent_project) {
                $industrials->projects()->attach($recent_project);
            }
        }
    }
}