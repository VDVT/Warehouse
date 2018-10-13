<?php

namespace Botble\Industrials\Services;

use Botble\Industrials\Models\Industrials;
use Botble\Industrials\Services\Abstracts\StoreProductsolutionServiceAbstract;
use Illuminate\Http\Request;

class StoreProductsolutionService extends StoreProductsolutionServiceAbstract
{

    /**
     * @param Request $request
     * @param Industrials $industrials
     * @author Minh Luu
     * @return mixed|void
     */
    public function executeProductsolution(Request $request, Industrials $industrials)
    {
        $key_solutions = $request->input('key_solution');
        if (!empty($key_solutions)) {
            $industrials->product_solutions()->detach();
            foreach ($key_solutions as $key_solution) {
                $industrials->product_solutions()->attach($key_solution);
            }
        }
    }
}