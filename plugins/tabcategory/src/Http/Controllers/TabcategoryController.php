<?php

namespace Botble\Tabcategory\Http\Controllers;

use Assets;
use Botble\Tabcategory\Http\Requests\TabcategoryRequest;
use Botble\Tabcategory\Repositories\Interfaces\TabcategoryInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Tabcategory\Http\DataTables\TabcategoryDataTable;

class TabcategoryController extends BaseController
{
    /**
     * @var TabcategoryInterface
     */
    protected $tabcategoryRepository;

    /**
     * TabcategoryController constructor.
     * @param TabcategoryInterface $tabcategoryRepository
     * @author Sang Nguyen
     */
    public function __construct(TabcategoryInterface $tabcategoryRepository)
    {
        $this->tabcategoryRepository = $tabcategoryRepository;
    }

    /**
     * Display all tabcategory
     * @param TabcategoryDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(TabcategoryDataTable $dataTable)
    {

        page_title()->setTitle(trans('tabcategory::tabcategory.list'));

        return $dataTable->renderTable(['title' => trans('tabcategory::tabcategory.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('tabcategory::tabcategory.create'));

        return view('tabcategory::create');
    }

    /**
     * Insert new Tabcategory into database
     *
     * @param TabcategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(TabcategoryRequest $request)
    {
        $tabcategory = $this->tabcategoryRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, TABCATEGORY_MODULE_SCREEN_NAME, $request, $tabcategory);

        if ($request->input('submit') === 'save') {
            return redirect()->route('tabcategory.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('tabcategory.edit', $tabcategory->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $tabcategory = $this->tabcategoryRepository->findById($id);
        if (empty($tabcategory)) {
            abort(404);
        }

        page_title()->setTitle(trans('tabcategory::tabcategory.edit') . ' #' . $id);

        return view('tabcategory::edit', compact('tabcategory'));
    }

    /**
     * @param $id
     * @param TabcategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, TabcategoryRequest $request)
    {
        $tabcategory = $this->tabcategoryRepository->findById($id);
        if (empty($tabcategory)) {
            abort(404);
        }
        $tabcategory->fill($request->input());

        $this->tabcategoryRepository->createOrUpdate($tabcategory);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, TABCATEGORY_MODULE_SCREEN_NAME, $request, $tabcategory);

        if ($request->input('submit') === 'save') {
            return redirect()->route('tabcategory.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('tabcategory.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $tabcategory = $this->tabcategoryRepository->findById($id);
            if (empty($tabcategory)) {
                abort(404);
            }
            $this->tabcategoryRepository->delete($tabcategory);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, TABCATEGORY_MODULE_SCREEN_NAME, $request, $tabcategory);

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
            $tabcategory = $this->tabcategoryRepository->findById($id);
            $this->tabcategoryRepository->delete($tabcategory);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, TABCATEGORY_MODULE_SCREEN_NAME, $request, $tabcategory);
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
            $tabcategory = $this->tabcategoryRepository->findById($id);
            $tabcategory->status = $request->input('status');
            $this->tabcategoryRepository->createOrUpdate($tabcategory);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, TABCATEGORY_MODULE_SCREEN_NAME, $request, $tabcategory);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
