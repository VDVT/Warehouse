<?php

namespace Botble\Projects\Http\Controllers;

use Assets;
use Botble\Projects\Http\Requests\ProjectsRequest;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Projects\Http\DataTables\ProjectsDataTable;

class ProjectsController extends BaseController
{
    /**
     * @var ProjectsInterface
     */
    protected $projectsRepository;

    /**
     * ProjectsController constructor.
     * @param ProjectsInterface $projectsRepository
     * @author Sang Nguyen
     */
    public function __construct(ProjectsInterface $projectsRepository)
    {
        $this->projectsRepository = $projectsRepository;
    }

    /**
     * Display all projects
     * @param ProjectsDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(ProjectsDataTable $dataTable)
    {

        page_title()->setTitle(trans('projects::projects.list'));

        return $dataTable->renderTable(['title' => trans('projects::projects.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('projects::projects.create'));

        Assets::addAppModule(['slug']);

        return view('projects::create');
    }

    /**
     * Insert new Projects into database
     *
     * @param ProjectsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(ProjectsRequest $request)
    {
        $projects = $this->projectsRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, PROJECTS_MODULE_SCREEN_NAME, $request, $projects);

        if ($request->input('submit') === 'save') {
            return redirect()->route('projects.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('projects.edit', $projects->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $projects = $this->projectsRepository->findById($id);
        if (empty($projects)) {
            abort(404);
        }

        Assets::addAppModule(['slug']);

        page_title()->setTitle(trans('projects::projects.edit') . ' #' . $id);

        return view('projects::edit', compact('projects'));
    }

    /**
     * @param $id
     * @param ProjectsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, ProjectsRequest $request)
    {
        $projects = $this->projectsRepository->findById($id);
        if (empty($projects)) {
            abort(404);
        }
        $projects->fill($request->input());

        $this->projectsRepository->createOrUpdate($projects);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PROJECTS_MODULE_SCREEN_NAME, $request, $projects);

        if ($request->input('submit') === 'save') {
            return redirect()->route('projects.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('projects.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $projects = $this->projectsRepository->findById($id);
            if (empty($projects)) {
                abort(404);
            }
            $this->projectsRepository->delete($projects);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PROJECTS_MODULE_SCREEN_NAME, $request, $projects);

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
            $projects = $this->projectsRepository->findById($id);
            $this->projectsRepository->delete($projects);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, PROJECTS_MODULE_SCREEN_NAME, $request, $projects);
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
            $projects = $this->projectsRepository->findById($id);
            $projects->status = $request->input('status');
            $this->projectsRepository->createOrUpdate($projects);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, PROJECTS_MODULE_SCREEN_NAME, $request, $projects);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }

    public function postCreateSlug(Request $request)
    {
        return $this->projectsRepository->createSlug($request->input('name'), $request->input('id'));
    }
}
