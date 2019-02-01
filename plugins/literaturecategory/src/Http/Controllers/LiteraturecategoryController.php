<?php

namespace Botble\Literaturecategory\Http\Controllers;

use Assets;
use Botble\Literaturecategory\Http\Requests\LiteraturecategoryRequest;
use Botble\Literaturecategory\Repositories\Interfaces\LiteraturecategoryInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Literaturecategory\Http\DataTables\LiteraturecategoryDataTable;

class LiteraturecategoryController extends BaseController
{
    /**
     * @var LiteraturecategoryInterface
     */
    protected $literaturecategoryRepository;

    /**
     * LiteraturecategoryController constructor.
     * @param LiteraturecategoryInterface $literaturecategoryRepository
     * @author Sang Nguyen
     */
    public function __construct(LiteraturecategoryInterface $literaturecategoryRepository)
    {
        $this->literaturecategoryRepository = $literaturecategoryRepository;
    }

    /**
     * Display all literaturecategory
     * @param LiteraturecategoryDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(LiteraturecategoryDataTable $dataTable)
    {

        page_title()->setTitle(trans('literaturecategory::literaturecategory.list'));

        return $dataTable->renderTable(['title' => trans('literaturecategory::literaturecategory.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('literaturecategory::literaturecategory.create'));

        return view('literaturecategory::create');
    }

    /**
     * Insert new Literaturecategory into database
     *
     * @param LiteraturecategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(LiteraturecategoryRequest $request)
    {
        $literaturecategory = $this->literaturecategoryRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, LITERATURECATEGORY_MODULE_SCREEN_NAME, $request, $literaturecategory);

        if ($request->input('submit') === 'save') {
            return redirect()->route('literaturecategory.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('literaturecategory.edit', $literaturecategory->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $literaturecategory = $this->literaturecategoryRepository->findById($id);
        if (empty($literaturecategory)) {
            abort(404);
        }

        page_title()->setTitle(trans('literaturecategory::literaturecategory.edit') . ' #' . $id);

        return view('literaturecategory::edit', compact('literaturecategory'));
    }

    /**
     * @param $id
     * @param LiteraturecategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, LiteraturecategoryRequest $request)
    {
        $literaturecategory = $this->literaturecategoryRepository->findById($id);
        if (empty($literaturecategory)) {
            abort(404);
        }
        $literaturecategory->fill($request->input());

        $this->literaturecategoryRepository->createOrUpdate($literaturecategory);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, LITERATURECATEGORY_MODULE_SCREEN_NAME, $request, $literaturecategory);

        if ($request->input('submit') === 'save') {
            return redirect()->route('literaturecategory.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('literaturecategory.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $literaturecategory = $this->literaturecategoryRepository->findById($id);
            if (empty($literaturecategory)) {
                abort(404);
            }
            $this->literaturecategoryRepository->delete($literaturecategory);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, LITERATURECATEGORY_MODULE_SCREEN_NAME, $request, $literaturecategory);

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
            $literaturecategory = $this->literaturecategoryRepository->findById($id);
            $this->literaturecategoryRepository->delete($literaturecategory);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, LITERATURECATEGORY_MODULE_SCREEN_NAME, $request, $literaturecategory);
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
            $literaturecategory = $this->literaturecategoryRepository->findById($id);
            $literaturecategory->status = $request->input('status');
            $this->literaturecategoryRepository->createOrUpdate($literaturecategory);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, LITERATURECATEGORY_MODULE_SCREEN_NAME, $request, $literaturecategory);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
