<?php

namespace Botble\Projectcompletion\Http\Controllers;

use Assets;
use Botble\Projectcompletion\Http\Requests\ProjectcompletionRequest;
use Botble\Projectcompletion\Repositories\Interfaces\ProjectcompletionInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Projectcompletion\Http\DataTables\ProjectcompletionDataTable;

class ProjectcompletionController extends BaseController
{
    /**
     * @var ProjectcompletionInterface
     */
    protected $projectcompletionRepository;

    /**
     * ProjectcompletionController constructor.
     * @param ProjectcompletionInterface $projectcompletionRepository
     * @author Sang Nguyen
     */
    public function __construct(ProjectcompletionInterface $projectcompletionRepository)
    {
        $this->projectcompletionRepository = $projectcompletionRepository;
    }

    /**
     * Display all projectcompletion
     * @param ProjectcompletionDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(ProjectcompletionDataTable $dataTable)
    {

        page_title()->setTitle(trans('projectcompletion::projectcompletion.list'));

        return $dataTable->renderTable(['title' => trans('projectcompletion::projectcompletion.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('projectcompletion::projectcompletion.create'));

        return view('projectcompletion::create');
    }

    /**
     * Insert new Projectcompletion into database
     *
     * @param ProjectcompletionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(ProjectcompletionRequest $request)
    {
        $projectcompletion = $this->projectcompletionRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, PROJECTCOMPLETION_MODULE_SCREEN_NAME, $request, $projectcompletion);

        if ($request->input('submit') === 'save') {
            return redirect()->route('projectcompletion.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('projectcompletion.edit', $projectcompletion->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $projectcompletion = $this->projectcompletionRepository->findById($id);
        if (empty($projectcompletion)) {
            abort(404);
        }

        page_title()->setTitle(trans('projectcompletion::projectcompletion.edit') . ' #' . $id);

        return view('projectcompletion::edit', compact('projectcompletion'));
    }

    /**
     * @param $id
     * @param ProjectcompletionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, ProjectcompletionRequest $request)
    {
        $projectcompletion = $this->projectcompletionRepository->findById($id);
        if (empty($projectcompletion)) {
            abort(404);
        }
        $projectcompletion->fill($request->input());

        $this->projectcompletionRepository->createOrUpdate($projectcompletion);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PROJECTCOMPLETION_MODULE_SCREEN_NAME, $request, $projectcompletion);

        if ($request->input('submit') === 'save') {
            return redirect()->route('projectcompletion.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('projectcompletion.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $projectcompletion = $this->projectcompletionRepository->findById($id);
            if (empty($projectcompletion)) {
                abort(404);
            }
            $this->projectcompletionRepository->delete($projectcompletion);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PROJECTCOMPLETION_MODULE_SCREEN_NAME, $request, $projectcompletion);

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
            $projectcompletion = $this->projectcompletionRepository->findById($id);
            $this->projectcompletionRepository->delete($projectcompletion);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PROJECTCOMPLETION_MODULE_SCREEN_NAME, $request, $projectcompletion);
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
            $projectcompletion = $this->projectcompletionRepository->findById($id);
            $projectcompletion->status = $request->input('status');
            $this->projectcompletionRepository->createOrUpdate($projectcompletion);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PROJECTCOMPLETION_MODULE_SCREEN_NAME, $request, $projectcompletion);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
