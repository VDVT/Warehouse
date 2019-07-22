<?php

namespace Botble\Theme\Http\ViewComposers;

use Illuminate\View\View;
use Botble\Productsolutions\Repositories\Interfaces\ProductsolutionsInterface;
use Botble\Industrials\Repositories\Interfaces\IndustrialsInterface;
use Botble\Coreexpertises\Repositories\Interfaces\CoreexpertisesInterface;
use Botble\Literature\Repositories\Interfaces\LiteratureInterface;
use Botble\Products\Repositories\Interfaces\ProductCategoryInterface;
class DataComposer
{
    /**
     * The user repository implementation.
     *
     * @var UserRepository
     */
    protected $productSolutionsRepository;
    protected $industrialRepository;
    protected $coreExpertisesRepository;
    protected $literatureRepository;

    /**
     * Create a new profile composer.
     *
     * @param  UserRepository  $users
     * @return void
     */
    public function __construct(
        ProductsolutionsInterface $productSolutionsRepository, 
        IndustrialsInterface $industrialRepository, 
        CoreexpertisesInterface $coreExpertisesRepository, 
        ProductCategoryInterface $productCategoryRepository, 
        LiteratureInterface $literatureRepository)
    {
        // Dependencies automatically resolved by service container...
        $this->productSolutionsRepository = $productSolutionsRepository;
        $this->industrialRepository       = $industrialRepository;
        $this->coreExpertisesRepository   = $coreExpertisesRepository;
        $this->literatureRepository       = $literatureRepository;
        $this->productCategoryRepository  = $productCategoryRepository;
    }

    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with([
            'product_solutions'      => $this->productSolutionsRepository->getProductSolutions(),
            'industrials'            => $this->industrialRepository->getIndustrials(),
            'core_expertises'        => $this->coreExpertisesRepository->getCoreExpertises(),
            'list_literatures'       => $this->literatureRepository->getLiteratures(2),
            'product_category_items' => $this->productCategoryRepository->getAllCategories(['parent_id'=>0, 'status'=>1])
        ]);
    }
}