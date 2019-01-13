<?php

namespace Botble\Literature\Http\Controllers;

use Assets;
use Botble\Literature\Http\Requests\LiteratureRequest;
use Botble\Literature\Repositories\Interfaces\LiteratureInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Literature\Http\DataTables\LiteratureDataTable;

class LiteratureController extends BaseController
{
    /**
     * @var LiteratureInterface
     */
    protected $literatureRepository;

    /**
     * LiteratureController constructor.
     * @param LiteratureInterface $literatureRepository
     * @author Sang Nguyen
     */
    public function __construct(LiteratureInterface $literatureRepository)
    {
        $this->literatureRepository = $literatureRepository;
    }

    /**
     * Display all literature
     * @param LiteratureDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(LiteratureDataTable $dataTable)
    {

        page_title()->setTitle(trans('literature::literature.list'));

        return $dataTable->renderTable(['title' => trans('literature::literature.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('literature::literature.create'));

        return view('literature::create');
    }

    /**
     * Insert new Literature into database
     *
     * @param LiteratureRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(LiteratureRequest $request)
    {
        $literature = $this->literatureRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, LITERATURE_MODULE_SCREEN_NAME, $request, $literature);

        if ($request->input('submit') === 'save') {
            return redirect()->route('literature.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('literature.edit', $literature->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $literature = $this->literatureRepository->findById($id);
        if (empty($literature)) {
            abort(404);
        }

        page_title()->setTitle(trans('literature::literature.edit') . ' #' . $id);

        return view('literature::edit', compact('literature'));
    }

    /**
     * @param $id
     * @param LiteratureRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, LiteratureRequest $request)
    {
        $literature = $this->literatureRepository->findById($id);
        if (empty($literature)) {
            abort(404);
        }
        $literature->fill($request->input());

        $this->literatureRepository->createOrUpdate($literature);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, LITERATURE_MODULE_SCREEN_NAME, $request, $literature);

        if ($request->input('submit') === 'save') {
            return redirect()->route('literature.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('literature.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $literature = $this->literatureRepository->findById($id);
            if (empty($literature)) {
                abort(404);
            }
            $this->literatureRepository->delete($literature);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, LITERATURE_MODULE_SCREEN_NAME, $request, $literature);

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
            $literature = $this->literatureRepository->findById($id);
            $this->literatureRepository->delete($literature);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, LITERATURE_MODULE_SCREEN_NAME, $request, $literature);
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
            $literature = $this->literatureRepository->findById($id);
            $literature->status = $request->input('status');
            $this->literatureRepository->createOrUpdate($literature);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, LITERATURE_MODULE_SCREEN_NAME, $request, $literature);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }

    /**
     * Show view order literature
     * @author TrinhLe
     * @param Request $request 
     * @return View
     */
    public function getOrder(Request $request)
    {
        return view('literature::order', compact(''));
    }

    /**
     * Update order literature
     * @author TrinhLe
     * @param Request $request 
     * @return Response
     */
    public function postOrder(Request $request)
    {

    }
}
