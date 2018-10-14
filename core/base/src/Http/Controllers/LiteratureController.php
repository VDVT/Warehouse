<?php

namespace Botble\Base\Http\Controllers;

use Botble\Literature\Repositories\Interfaces\LiteratureInterface;
use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;

class LiteratureController extends Controller
{
	protected $literatureRepository;

    public function __construct(LiteratureInterface $literatureRepository)
    {
        $this->literatureRepository = $literatureRepository;
    }

	public function getList()
    {
        /* custom css and js for page */
        Theme::asset()->usePath()->add('style-literature-detail', 'css/page/literature/literature.css', ['style']);
        // Theme::asset()->container('footer')->usePath()->add('js-literature-detail', 'js/page/literature/detail.js', ['gtt-main-js']);
        /* end custom css and js for page */

        $literatures = $this->literatureRepository->getLiteratures();
        return Theme::scope('literature.list', compact('literatures'))->render();
    }
}