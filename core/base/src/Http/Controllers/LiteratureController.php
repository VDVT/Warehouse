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
        // $banners           = get_banners();
        // $product_solutions = get_product_solutions();
        // $testimonials      = get_testimonials();
        // Theme::share('product_solutions', $product_solutions);
        // Theme::breadcrumb()->add(__('Home'), route('public.index'));
        $literatures = $this->literatureRepository->getLiteratures();
        return Theme::scope('literature.list', compact('literatures'))->render();
    }
}