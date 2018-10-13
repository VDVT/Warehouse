<?php

namespace Botble\Base\Http\Controllers;

use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;
use Botble\Industrials\Repositories\Interfaces\IndustrialsInterface;

class IndustrialController extends Controller
{
	public function details($slug, IndustrialsInterface $industrialRepository)
    {
        $industrial = $industrialRepository->getBySlug($slug, true);
        if (empty($industrial)) abort(404);
        $industrial_others = $industrialRepository->getIndustrials(false, $industrial->id);
        
        return Theme::scope('industrial.details', compact('industrial', 'industrial_others'))->render();
    }
}