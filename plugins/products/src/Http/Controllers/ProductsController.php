<?php

namespace Botble\Products\Http\Controllers;

use Assets;
use Botble\Products\Http\Requests\ProductsRequest;
use Botble\Products\Repositories\Interfaces\ProductsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Products\Http\DataTables\ProductsDataTable;
use Botble\Products\Services\StoreProductCategoryService;

class ProductsController extends BaseController
{
    /**
     * @var ProductsInterface
     */
    protected $productsRepository;

    /**
     * ProductsController constructor.
     * @param ProductsInterface $productsRepository
     * @author Sang Nguyen
     */
    public function __construct(ProductsInterface $productsRepository)
    {
        $this->productsRepository = $productsRepository;
    }

    /**
     * Display all products
     * @param ProductsDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(ProductsDataTable $dataTable)
    {

        page_title()->setTitle(trans('products::products.list'));

        return $dataTable->renderTable(['title' => trans('products::products.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('products::products.create'));

        Assets::addAppModule(['slug']);

        $categories = get_product_categories_with_children();

        // echo "<pre>";
        //     print_r($categories);
        // echo "</pre>";
        // die;

        return view('products::create', compact('categories'));
    }

    /**
     * Insert new Products into database
     *
     * @param ProductsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(ProductsRequest $request, StoreProductCategoryService $productCategoryService)
    {
        $products = $this->productsRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, PRODUCTS_MODULE_SCREEN_NAME, $request, $products);

        $productCategoryService->execute($request, $products);

        if ($request->input('submit') === 'save') {
            return redirect()->route('products.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('products.edit', $products->id)->with('success_msg', trans('bases::notices.create_success_message'));
        }
    }

    /**
     * Show edit form
     *
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getEdit($id)
    {
        $products = $this->productsRepository->findById($id);
        if (empty($products)) {
            abort(404);
        }

        page_title()->setTitle(trans('products::products.edit') . ' #' . $id);

        Assets::addAppModule(['slug']);

        $selected_categories = array();

        $productCategories = $products->product_categories;
        $selected_categories = $productCategories->pluck('id')->all();
        
        $categories = get_product_categories_with_children();

        return view('products::edit', compact('products', 'categories', 'selected_categories'));
    }

    /**
     * @param $id
     * @param ProductsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, ProductsRequest $request, StoreProductCategoryService $productCategoryService)
    {
        $products = $this->productsRepository->findById($id);
        if (empty($products)) {
            abort(404);
        }
        $products->fill($request->input());

        $this->productsRepository->createOrUpdate($products);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PRODUCTS_MODULE_SCREEN_NAME, $request, $products);

        $productCategoryService->execute($request, $products);

        if ($request->input('submit') === 'save') {
            return redirect()->route('products.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('products.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
        }
    }

    /**
     * @param Request $request
     * @param $id
     * @return array
     * @author Sang Nguyen
     */
    public function getDelete(Request $request, $id)
    {
        try {
            $products = $this->productsRepository->findById($id);
            if (empty($products)) {
                abort(404);
            }
            $this->productsRepository->delete($products);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PRODUCTS_MODULE_SCREEN_NAME, $request, $products);

            return [
                'error' => false,
                'message' => trans('bases::notices.deleted'),
            ];
        } catch (Exception $e) {
            return [
                'error' => true,
                'message' => trans('bases::notices.cannot_delete'),
            ];
        }
    }

    /**
     * @param Request $request
     * @return array|\Illuminate\Http\JsonResponse
     * @author Sang Nguyen
     */
    public function postDeleteMany(Request $request)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return [
                'error' => true,
                'message' => trans('bases::notices.no_select'),
            ];
        }

        foreach ($ids as $id) {
            $products = $this->productsRepository->findById($id);
            $this->productsRepository->delete($products);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PRODUCTS_MODULE_SCREEN_NAME, $request, $products);
        }

        return [
            'error' => false,
            'message' => trans('bases::notices.delete_success_message'),
        ];
    }

    /**
     * @param Request $request
     * @return array
     * @author Sang Nguyen
     */
    public function postChangeStatus(Request $request)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return [
                'error' => true,
                'message' => trans('bases::notices.no_select'),
            ];
        }

        foreach ($ids as $id) {
            $products = $this->productsRepository->findById($id);
            $products->status = $request->input('status');
            $this->productsRepository->createOrUpdate($products);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PRODUCTS_MODULE_SCREEN_NAME, $request, $products);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }

    public function postCreateSlug(Request $request)
    {
        return $this->productsRepository->createSlug($request->input('name'), $request->input('id'));
    }
}
