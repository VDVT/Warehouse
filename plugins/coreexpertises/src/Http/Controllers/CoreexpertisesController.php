<?php

namespace Botble\Coreexpertises\Http\Controllers;

use Assets;
use Botble\Coreexpertises\Http\Requests\CoreexpertisesRequest;
use Botble\Coreexpertises\Repositories\Interfaces\CoreexpertisesInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Coreexpertises\Http\DataTables\CoreexpertisesDataTable;

class CoreexpertisesController extends BaseController
{
    /**
     * @var CoreexpertisesInterface
     */
    protected $coreexpertisesRepository;

    /**
     * CoreexpertisesController constructor.
     * @param CoreexpertisesInterface $coreexpertisesRepository
     * @author Sang Nguyen
     */
    public function __construct(CoreexpertisesInterface $coreexpertisesRepository)
    {
        $this->coreexpertisesRepository = $coreexpertisesRepository;
    }

    /**
     * Display all coreexpertises
     * @param CoreexpertisesDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(CoreexpertisesDataTable $dataTable)
    {

        page_title()->setTitle(trans('coreexpertises::coreexpertises.list'));

        return $dataTable->renderTable(['title' => trans('coreexpertises::coreexpertises.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('coreexpertises::coreexpertises.create'));
        Assets::addAppModule(['slug']);
        return view('coreexpertises::create');
    }

    /**
     * Insert new Coreexpertises into database
     *
     * @param CoreexpertisesRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(CoreexpertisesRequest $request)
    {
        $coreexpertises = $this->coreexpertisesRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, COREEXPERTISES_MODULE_SCREEN_NAME, $request, $coreexpertises);

        if ($request->input('submit') === 'save') {
            return redirect()->route('coreexpertises.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('coreexpertises.edit', $coreexpertises->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $coreexpertises = $this->coreexpertisesRepository->findById($id);
        if (empty($coreexpertises)) {
            abort(404);
        }

        Assets::addAppModule(['slug']);

        page_title()->setTitle(trans('coreexpertises::coreexpertises.edit') . ' #' . $id);

        return view('coreexpertises::edit', compact('coreexpertises'));
    }

    /**
     * @param $id
     * @param CoreexpertisesRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, CoreexpertisesRequest $request)
    {
        $coreexpertises = $this->coreexpertisesRepository->findById($id);
        if (empty($coreexpertises)) {
            abort(404);
        }
        $coreexpertises->fill($request->input());

        $this->coreexpertisesRepository->createOrUpdate($coreexpertises);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, COREEXPERTISES_MODULE_SCREEN_NAME, $request, $coreexpertises);

        if ($request->input('submit') === 'save') {
            return redirect()->route('coreexpertises.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('coreexpertises.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $coreexpertises = $this->coreexpertisesRepository->findById($id);
            if (empty($coreexpertises)) {
                abort(404);
            }
            $this->coreexpertisesRepository->delete($coreexpertises);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, COREEXPERTISES_MODULE_SCREEN_NAME, $request, $coreexpertises);

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
            $coreexpertises = $this->coreexpertisesRepository->findById($id);
            $this->coreexpertisesRepository->delete($coreexpertises);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, COREEXPERTISES_MODULE_SCREEN_NAME, $request, $coreexpertises);
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
            $coreexpertises = $this->coreexpertisesRepository->findById($id);
            $coreexpertises->status = $request->input('status');
            $this->coreexpertisesRepository->createOrUpdate($coreexpertises);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, COREEXPERTISES_MODULE_SCREEN_NAME, $request, $coreexpertises);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }

    public function postCreateSlug(Request $request)
    {
        return $this->coreexpertisesRepository->createSlug($request->input('name'), $request->input('id'));
    }
}
