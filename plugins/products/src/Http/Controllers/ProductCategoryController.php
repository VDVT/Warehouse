<?php

namespace Botble\Products\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Products\Http\DataTables\ProductCategoryDataTable;
use Botble\Products\Http\Requests\ProductCategoryRequest;
use Assets;
use Exception;
use Illuminate\Http\Request;
use Botble\Tabcategory\Repositories\Interfaces\TabcategoryInterface;
use Botble\Products\Repositories\Interfaces\ProductCategoryInterface;
use Botble\Groupproductcategory\Repositories\Interfaces\GroupproductcategoryInterface;

class ProductCategoryController extends BaseController
{
    /**
     * @var ProductsInterface
     */
    protected $categoryRepository;

    /**
     * @var TabcategoryInterface
     */
    protected $tabCategoryRepository;

    /**
     * @var GroupproductcategoryInterface
     */
    protected $groupRepository;

    /**
     * ProductCategoryController constructor.
     * @param ProductsInterface $categoryRepository
     * @author Sang Nguyen
     */
    public function __construct(ProductCategoryInterface $categoryRepository, TabcategoryInterface $tabCategoryRepository, GroupproductcategoryInterface $groupRepository)
    {
        $this->categoryRepository    = $categoryRepository;
        $this->tabCategoryRepository = $tabCategoryRepository;
        $this->groupRepository       = $groupRepository;
    }

    /**
     * Display all categories
     * @param ProductCategoryDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(ProductCategoryDataTable $dataTable)
    {
        page_title()->setTitle(trans('products::product_categories.list'));

        return $dataTable->renderTable(['title' => trans('products::product_categories.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('products::product_categories.create'));

        Assets::addAppModule(['slug']);

        $categories = $this->categoryRepository->pluck('name', 'id');
        $categories[0] = __('None');
        $categories = array_sort_recursive($categories);

        $tabs = $this->tabCategoryRepository->pluck('name', 'id');
        // $groups = $this->groupRepository->pluck('name', 'id');

        return view('products::product_categories.create', compact('categories','tabs'));
    }

    /**
     * Insert new Category into database
     *
     * @param ProductCategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(ProductCategoryRequest $request)
    {

        $category = $this->categoryRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, $request, $category);

        if ($request->input('submit') === 'save') {
            return redirect()->route('product_categories.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('product_categories.edit', $category->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $category = $this->categoryRepository->findById($id);

        if (empty($category)) {
            abort(404);
        }

        page_title()->setTitle(trans('products::product_categories.edit') . ' #' . $id);

        Assets::addAppModule(['slug']);

        $categories = $this->categoryRepository->pluck('name', 'id');
        $categories[0] = __('None');
        $categories = array_sort_recursive($categories);

        $tabs = $this->tabCategoryRepository->pluck('name', 'id');
        // $groups = $this->groupRepository->pluck('name', 'id');

        return view('products::product_categories.edit', compact('category', 'categories','tabs'));
    }

    /**
     * @param $id
     * @param ProductCategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, ProductCategoryRequest $request)
    {
        $category = $this->categoryRepository->findById($id);
        if (empty($category)) {
            abort(404);
        }

        $category->fill($request->input());
        // $category->featured = $request->input('featured', false);
        // $category->is_default = $request->input('is_default', false);

        $this->categoryRepository->createOrUpdate($category);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, $request, $category);

        if ($request->input('submit') === 'save') {
            return redirect()->route('product_categories.list')->with('success_msg', trans('bases::notices.update_success_message'));
        }
        return redirect()->route('product_categories.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
    }

    /**
     * @param $id
     * @param Request $request
     * @return array
     * @author Sang Nguyen
     */
    public function getDelete(Request $request,$id)
    {
        try {
            $category = $this->categoryRepository->findById($id);
            if (empty($category)) {
                abort(404);
            }

            if (!$category->is_default) {
                $this->categoryRepository->delete($category);
                do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, $request, $category);
            }

            return [
                'error' => false,
                'message' => trans('bases::notices.deleted'),
            ];
        } catch (Exception $ex) {
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
            $category = $this->categoryRepository->findById($id);
            if (!$category->is_default) {
                $this->categoryRepository->delete($category);

                do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, $request, $category);
            }
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
            $category = $this->categoryRepository->findById($id);
            $category->status = $request->input('status');
            $this->categoryRepository->createOrUpdate($category);
            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, $request, $category);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * @author Sang Nguyen
     */
    public function postCreateSlug(Request $request)
    {
        return $this->categoryRepository->createSlug($request->input('name'), $request->input('id'));
    }
}
