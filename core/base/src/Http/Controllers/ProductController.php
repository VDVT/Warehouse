<?php

namespace Botble\Base\Http\Controllers;

use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;
use Botble\Groupproductcategory\Repositories\Interfaces\GroupproductcategoryInterface;
use Botble\Tabcategory\Repositories\Interfaces\TabcategoryInterface;
use Botble\Products\Repositories\Interfaces\ProductCategoryInterface;
use Botble\Products\Repositories\Interfaces\ProductsInterface;
use Illuminate\Http\Request;
use Botble\Products\Models\ProductCategory;
use Botble\Tabcategory\Models\Tabcategory;

class ProductController extends Controller
{
    /**
     * @var TabcategoryInterface
     */
    protected $tabCategoryRepository;

    /**
     * @var GroupproductcategoryInterface
     */
    protected $groupRepository;

    /**
     * @var ProductCategoryInterface
     */
    protected $productCategoryRepository;

    /**
     * @var ProductsInterface
     */
    protected $productRepository;

    public function __construct(ProductCategoryInterface $productCategoryRepository, ProductsInterface $productRepository, TabcategoryInterface $tabCategoryRepository, GroupproductcategoryInterface $groupRepository)
    {
        $this->productCategoryRepository = $productCategoryRepository;
        $this->productRepository         = $productRepository;
        $this->tabCategoryRepository     = $tabCategoryRepository;
        $this->groupRepository           = $groupRepository;
    }

	public function getList()
    {
        // $banners           = get_banners();
        // $product_solutions = get_product_solutions();
        // $testimonials      = get_testimonials();
        // Theme::share('product_solutions', $product_solutions);
        // Theme::breadcrumb()->add(__('Home'), route('public.index'));
        // return Theme::scope('product.list')->render();
    }

	public function details($slug)
    {
        $product = $this->productRepository->getBySlug($slug, true);

        if (empty($product)) abort(404);
        $seo = get_meta_data($product->id, 'seo_meta', PRODUCTS_MODULE_SCREEN_NAME, true);
        if(!empty($seo))
            SeoHelper::setTitle($seo['seo_title'])->setDescription($seo['seo_description'])->setKeywords($seo['seo_keyword']);

        Theme::breadcrumb()->add(__('Home'), route('public.index'));
        /* custom css and js for page */
        Theme::asset()->usePath()->add('style-product-detail', 'css/page/product/detail.css', ['style']);
        Theme::asset()->container('footer')->usePath()->add('js-product-detail', 'js/page/product/detail.js', ['gtt-main-js']);
        /* end custom css and js for page */
        return Theme::scope('product.details', compact('product'))->render();
    }

    public function productCategoryList()
    {
        Theme::asset()->usePath()->add('style-product', 'css/page/product/product.css', ['style']);
        Theme::asset()->container('footer')->usePath()->add('js-product', 'js/page/product/product.js', ['gtt-main-js']);
        $tabs = $this->tabCategoryRepository->getAllTabs(['status'=>1]);
        return Theme::scope('product.categories.list', compact('tabs'))->render();
    }

    public function productCategorydetails($slug)
    {
        $product_category = $this->productCategoryRepository->getBySlug($slug, true);
        if (empty($product_category)) abort(404);
        $seo = get_meta_data($product_category->id, 'seo_meta', PRODUCT_CATEGORY_MODULE_SCREEN_NAME, true);
        if(!empty($seo))
            SeoHelper::setTitle($seo['seo_title'])->setDescription($seo['seo_description'])->setKeywords($seo['seo_keyword']);

        $sizes = $product_category->products->where('size', '!=', '')->pluck('size')->unique()->toArray();
        $colors = $product_category->products->where('color', '!=', '')->pluck('color')->unique()->toArray();
        $widths = $product_category->products->where('width', '!=', '')->pluck('width')->unique()->toArray();
        $heights = $product_category->products->where('height', '!=', '')->pluck('height')->unique()->toArray();


        /* custom css and js for page */
        Theme::asset()->usePath()->add('style-product-detail', 'css/page/product/detail.css', ['style']);
        Theme::asset()->container('footer')->usePath()->add('js-product-detail', 'js/page/product/detail.js', ['gtt-main-js']);
        /* end custom css and js for page */
        return Theme::scope('product.categories.details', compact('product_category', 'sizes', 'colors', 'widths', 'heights'))->render();
    }

    public function loadProducts(Request $request)
    {
        if($request->ajax()){
            $products = $this->productRepository->getProductsByAttribute($request->all());
            if($products->count()>0){
                $content = '';
                foreach ($products as $product) {
                    $content .= '<div class="item product-item" data-id="'.$product->id.'" data-availability="'.$product->availability.'">
                                <p class="title">'.$product->name.'</p>
                                <p class="des">'.$product->description.'</p>
                            </div>';
                }
                return response()->json(
                    ['status'=>true, 'msg'=>'', 'content'=>$content]
                );
            }

            return response()->json(
                ['status'=>false, 'msg'=>'We currently do not have any product.']
            );
        }
    }

    public function loadProductDetails(Request $request)
    {
        if($request->ajax()){
            $product = $this->productRepository->findById($request->product_id);
            if($product){
                return response()->json(
                    ['status'=>true, 'msg'=>'', 'product'=>$product]
                );
            }

            return response()->json(
                ['status'=>false, 'msg'=>'Product is not found']
            );
        }
    }

    /**
     * Description
     * @param type $groupId 
     * @return type
     */
    public function getProductByGroup($groupId)
    {
        $groupProduct = $this->groupRepository->getFirstBy([
            'status' => 1,
            'id' => (int)$groupId
        ]);
        if (empty($groupProduct)) abort(404);

        Theme::asset()->usePath()->add('style-product', 'css/page/product/product.css', ['style']);
        Theme::asset()->container('footer')->usePath()->add('js-product', 'js/page/product/product.js', ['gtt-main-js']);
        $tabs = Tabcategory::where('group_id', $groupProduct->id)->where('status', '=', true)->orderBy('created_at', 'asc')->get();
        return Theme::scope('product.categories.list', compact('tabs'))->render();
    }
}