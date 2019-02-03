<?php

namespace Botble\Base\Http\Controllers;

use Botble\Literature\Repositories\Interfaces\LiteratureInterface;
use Botble\Literaturecategory\Repositories\Interfaces\LiteraturecategoryInterface;
use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;

class LiteratureController extends Controller
{
    /**
     * @var LiteratureInterface
     */
	protected $literatureRepository;

    /**
     * @var LiteraturecategoryInterface
     */
    protected $literaturecategoryInterface;

    public function __construct(LiteratureInterface $literatureRepository, LiteraturecategoryInterface $literaturecategoryInterface)
    {
        $this->literatureRepository        = $literatureRepository;
        $this->literaturecategoryInterface = $literaturecategoryInterface;
    }

	public function getList()
    {
        Theme::asset()->usePath()->add('style-literature-detail', 'css/page/literature/literature.css', ['style']);
        // Theme::asset()->container('footer')->usePath()->add('js-literature-detail', 'js/page/literature/detail.js', ['gtt-main-js']);

        $literatures = $this->literatureRepository->getLiteratures();

        $tabs = $this->literaturecategoryInterface->getAllTabs(['status'=>1]);

        return Theme::scope('literature.list', compact('literatures','tabs'))->render();
    }
}