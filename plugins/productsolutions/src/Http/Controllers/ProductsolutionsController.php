<?php

namespace Botble\Productsolutions\Http\Controllers;

use Assets;
use Botble\Productsolutions\Http\Requests\ProductsolutionsRequest;
use Botble\Productsolutions\Repositories\Interfaces\ProductsolutionsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Productsolutions\Http\DataTables\ProductsolutionsDataTable;
use Botble\Productsolutions\Services\StoreProductCategoryService;

class ProductsolutionsController extends BaseController
{
    /**
     * @var ProductsolutionsInterface
     */
    protected $productsolutionsRepository;

    /**
     * ProductsolutionsController constructor.
     * @param ProductsolutionsInterface $productsolutionsRepository
     * @author Sang Nguyen
     */
    public function __construct(ProductsolutionsInterface $productsolutionsRepository)
    {
        $this->productsolutionsRepository = $productsolutionsRepository;
    }

    /**
     * Display all productsolutions
     * @param ProductsolutionsDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(ProductsolutionsDataTable $dataTable)
    {

        page_title()->setTitle(trans('productsolutions::productsolutions.list'));

        return $dataTable->renderTable(['title' => trans('productsolutions::productsolutions.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('productsolutions::productsolutions.create'));

        Assets::addAppModule(['slug']);

        return view('productsolutions::create');
    }

    /**
     * Insert new Productsolutions into database
     *
     * @param ProductsolutionsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(ProductsolutionsRequest $request, StoreProductCategoryService $productCategoryService)
    {
        $data = $request->input();
        
        $data['performance'] = json_encode($data['performance']);
        $productsolutions = $this->productsolutionsRepository->createOrUpdate($data);

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, $request, $productsolutions);

        $productCategoryService->execute($request, $productsolutions);

        if ($request->input('submit') === 'save') {
            return redirect()->route('productsolutions.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('productsolutions.edit', $productsolutions->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $productsolutions = $this->productsolutionsRepository->findById($id);
        if (empty($productsolutions)) {
            abort(404);
        }

        Assets::addAppModule(['slug']);

        $related_products = $productsolutions->product_categories()->orderBy('productsolutions_product_category.id', 'asc')->get();

        page_title()->setTitle(trans('productsolutions::productsolutions.edit') . ' #' . $id);

        return view('productsolutions::edit', compact('productsolutions', 'related_products'));
    }

    /**
     * @param $id
     * @param ProductsolutionsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, ProductsolutionsRequest $request, StoreProductCategoryService $productCategoryService)
    {
        $productsolutions = $this->productsolutionsRepository->findById($id);
        if (empty($productsolutions)) {
            abort(404);
        }

        $data = $request->input();
        $data['performance'] = json_encode($data['performance']);
        
        $productsolutions->fill($data);

        $this->productsolutionsRepository->createOrUpdate($productsolutions);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, $request, $productsolutions);

        $productCategoryService->execute($request, $productsolutions);

        if ($request->input('submit') === 'save') {
            return redirect()->route('productsolutions.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('productsolutions.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $productsolutions = $this->productsolutionsRepository->findById($id);
            if (empty($productsolutions)) {
                abort(404);
            }
            $this->productsolutionsRepository->delete($productsolutions);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, $request, $productsolutions);

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
            $productsolutions = $this->productsolutionsRepository->findById($id);
            $this->productsolutionsRepository->delete($productsolutions);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, $request, $productsolutions);
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
            $productsolutions = $this->productsolutionsRepository->findById($id);
            $productsolutions->status = $request->input('status');
            $this->productsolutionsRepository->createOrUpdate($productsolutions);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, $request, $productsolutions);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }

    public function postCreateSlug(Request $request)
    {
        return $this->productsolutionsRepository->createSlug($request->input('name'), $request->input('id'));
    }

}
