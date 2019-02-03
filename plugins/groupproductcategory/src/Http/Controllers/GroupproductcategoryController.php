<?php

namespace Botble\Groupproductcategory\Http\Controllers;

use Assets;
use Botble\Groupproductcategory\Http\Requests\GroupproductcategoryRequest;
use Botble\Groupproductcategory\Repositories\Interfaces\GroupproductcategoryInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Groupproductcategory\Http\DataTables\GroupproductcategoryDataTable;

class GroupproductcategoryController extends BaseController
{
    /**
     * @var GroupproductcategoryInterface
     */
    protected $groupproductcategoryRepository;

    /**
     * GroupproductcategoryController constructor.
     * @param GroupproductcategoryInterface $groupproductcategoryRepository
     * @author Sang Nguyen
     */
    public function __construct(GroupproductcategoryInterface $groupproductcategoryRepository)
    {
        $this->groupproductcategoryRepository = $groupproductcategoryRepository;
    }

    /**
     * Display all groupproductcategory
     * @param GroupproductcategoryDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(GroupproductcategoryDataTable $dataTable)
    {

        page_title()->setTitle(trans('groupproductcategory::groupproductcategory.list'));

        return $dataTable->renderTable(['title' => trans('groupproductcategory::groupproductcategory.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('groupproductcategory::groupproductcategory.create'));

        return view('groupproductcategory::create');
    }

    /**
     * Insert new Groupproductcategory into database
     *
     * @param GroupproductcategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(GroupproductcategoryRequest $request)
    {
        $groupproductcategory = $this->groupproductcategoryRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, $request, $groupproductcategory);

        if ($request->input('submit') === 'save') {
            return redirect()->route('groupproductcategory.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('groupproductcategory.edit', $groupproductcategory->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $groupproductcategory = $this->groupproductcategoryRepository->findById($id);
        if (empty($groupproductcategory)) {
            abort(404);
        }

        page_title()->setTitle(trans('groupproductcategory::groupproductcategory.edit') . ' #' . $id);

        return view('groupproductcategory::edit', compact('groupproductcategory'));
    }

    /**
     * @param $id
     * @param GroupproductcategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, GroupproductcategoryRequest $request)
    {
        $groupproductcategory = $this->groupproductcategoryRepository->findById($id);
        if (empty($groupproductcategory)) {
            abort(404);
        }
        $groupproductcategory->fill($request->input());

        $this->groupproductcategoryRepository->createOrUpdate($groupproductcategory);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, $request, $groupproductcategory);

        if ($request->input('submit') === 'save') {
            return redirect()->route('groupproductcategory.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('groupproductcategory.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $groupproductcategory = $this->groupproductcategoryRepository->findById($id);
            if (empty($groupproductcategory)) {
                abort(404);
            }
            $this->groupproductcategoryRepository->delete($groupproductcategory);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, $request, $groupproductcategory);

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
            $groupproductcategory = $this->groupproductcategoryRepository->findById($id);
            $this->groupproductcategoryRepository->delete($groupproductcategory);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, $request, $groupproductcategory);
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
            $groupproductcategory = $this->groupproductcategoryRepository->findById($id);
            $groupproductcategory->status = $request->input('status');
            $this->groupproductcategoryRepository->createOrUpdate($groupproductcategory);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, $request, $groupproductcategory);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
