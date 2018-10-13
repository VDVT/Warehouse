<?php

namespace Botble\Base\Http\Controllers;

use Botble\Coreexpertises\Repositories\Interfaces\CoreexpertisesInterface;
use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;

class CoreExpertiseController extends Controller
{
	public function details($slug, CoreexpertisesInterface $coreExpertiseRepository)
    {
        $core_expertise = $coreExpertiseRepository->getBySlug($slug, true);
        $seo = get_meta_data($core_expertise->id, 'seo_meta', COREEXPERTISES_MODULE_SCREEN_NAME, true);
        if(!empty($seo))
            SeoHelper::setTitle($seo['seo_title'])->setDescription($seo['seo_description'])->setKeywords($seo['seo_keyword']);
        return Theme::scope('core-expertise.details', compact('core_expertise'))->render();
    }
}