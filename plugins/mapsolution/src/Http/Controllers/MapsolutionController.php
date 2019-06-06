<?php

namespace Botble\Mapsolution\Http\Controllers;

use Assets;
use Botble\Mapsolution\Http\Requests\MapsolutionRequest;
use Botble\Mapsolution\Repositories\Interfaces\MapsolutionInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Mapsolution\Http\DataTables\MapsolutionDataTable;

class MapsolutionController extends BaseController
{
    /**
     * @var MapsolutionInterface
     */
    protected $mapsolutionRepository;

    /**
     * MapsolutionController constructor.
     * @param MapsolutionInterface $mapsolutionRepository
     * @author Sang Nguyen
     */
    public function __construct(MapsolutionInterface $mapsolutionRepository)
    {
        $this->mapsolutionRepository = $mapsolutionRepository;
    }

    /**
     * Display all mapsolution
     * @param MapsolutionDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(MapsolutionDataTable $dataTable)
    {

        page_title()->setTitle(trans('mapsolution::mapsolution.list'));

        return $dataTable->renderTable(['title' => trans('mapsolution::mapsolution.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('mapsolution::mapsolution.create'));

        return view('mapsolution::create');
    }

    /**
     * Insert new Mapsolution into database
     *
     * @param MapsolutionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(MapsolutionRequest $request)
    {
        $mapsolution = $this->mapsolutionRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, MAPSOLUTION_MODULE_SCREEN_NAME, $request, $mapsolution);

        if ($request->input('submit') === 'save') {
            return redirect()->route('mapsolution.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('mapsolution.edit', $mapsolution->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $mapsolution = $this->mapsolutionRepository->findById($id);
        if (empty($mapsolution)) {
            abort(404);
        }

        page_title()->setTitle(trans('mapsolution::mapsolution.edit') . ' #' . $id);

        return view('mapsolution::edit', compact('mapsolution'));
    }

    /**
     * @param $id
     * @param MapsolutionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, MapsolutionRequest $request)
    {
        $mapsolution = $this->mapsolutionRepository->findById($id);
        if (empty($mapsolution)) {
            abort(404);
        }
        $mapsolution->fill($request->input());

        $this->mapsolutionRepository->createOrUpdate($mapsolution);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, MAPSOLUTION_MODULE_SCREEN_NAME, $request, $mapsolution);

        if ($request->input('submit') === 'save') {
            return redirect()->route('mapsolution.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('mapsolution.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $mapsolution = $this->mapsolutionRepository->findById($id);
            if (empty($mapsolution)) {
                abort(404);
            }
            $this->mapsolutionRepository->delete($mapsolution);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, MAPSOLUTION_MODULE_SCREEN_NAME, $request, $mapsolution);

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
            $mapsolution = $this->mapsolutionRepository->findById($id);
            $this->mapsolutionRepository->delete($mapsolution);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, MAPSOLUTION_MODULE_SCREEN_NAME, $request, $mapsolution);
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
            $mapsolution = $this->mapsolutionRepository->findById($id);
            $mapsolution->status = $request->input('status');
            $this->mapsolutionRepository->createOrUpdate($mapsolution);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, MAPSOLUTION_MODULE_SCREEN_NAME, $request, $mapsolution);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
