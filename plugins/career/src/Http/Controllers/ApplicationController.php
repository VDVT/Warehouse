<?php

namespace Botble\Career\Http\Controllers;

use Assets;
use Botble\Career\Http\Requests\CareerRequest;
use Botble\Career\Repositories\Interfaces\ApplicationInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Career\Http\DataTables\ApplicationDataTable;
use Botble\Contactaccountmanager\Models\State;
use Botble\Career\Repositories\Interfaces\CareerInterface;

class ApplicationController extends BaseController
{
    /**
     * @var ApplicationInterface
     */
    protected $applicationRepository;
    protected $careerRepository;

    /**
     * ApplicationController constructor.
     * @param ApplicationInterface $applicationRepository
     * @author Sang Nguyen
     */
    public function __construct(ApplicationInterface $applicationRepository, CareerInterface $careerRepository)
    {
        $this->applicationRepository = $applicationRepository;
        $this->careerRepository = $careerRepository;
    }

    /**
     * Display all career
     * @param ApplicationDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(ApplicationDataTable $dataTable)
    {
        page_title()->setTitle(trans('career::applicationform.list'));

        return $dataTable->renderTable(['title' => trans('career::applicationform.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    // public function getCreate()
    // {
    //     page_title()->setTitle(trans('career::career.create'));

    //     return view('career::create');
    // }

    /**
     * Insert new Career into database
     *
     * @param CareerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    // public function postCreate(CareerRequest $request)
    // {
    //     $career = $this->applicationRepository->createOrUpdate($request->input());

    //     do_action(BASE_ACTION_AFTER_CREATE_CONTENT, CAREER_MODULE_SCREEN_NAME, $request, $career);

    //     if ($request->input('submit') === 'save') {
    //         return redirect()->route('career.list')->with('success_msg', trans('bases::notices.create_success_message'));
    //     } else {
    //         return redirect()->route('career.edit', $career->id)->with('success_msg', trans('bases::notices.create_success_message'));
    //     }
    // }

    /**
     * Show edit form
     *
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getEdit($id)
    {
        $application = $this->applicationRepository->findById($id);
        if (empty($application)) {
            abort(404);
        }

        $states = State::orderBy('ordering', 'asc')->get()->pluck('name', 'id')->toArray();
        $states = array(''=>'') + $states;
        $careers = $this->careerRepository->getCareers();

        page_title()->setTitle(trans('career::applicationform.edit') . ' #' . $id);

        return view('career::application_edit', compact('application', 'states', 'careers'));
    }

    /**
     * @param $id
     * @param CareerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    // public function postEdit($id, CareerRequest $request)
    // {
    //     $career = $this->applicationRepository->findById($id);
    //     if (empty($career)) {
    //         abort(404);
    //     }
    //     $career->fill($request->input());

    //     $this->applicationRepository->createOrUpdate($career);

    //     do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, CAREER_MODULE_SCREEN_NAME, $request, $career);

    //     if ($request->input('submit') === 'save') {
    //         return redirect()->route('career.list')->with('success_msg', trans('bases::notices.update_success_message'));
    //     } else {
    //         return redirect()->route('career.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
    //     }
    // }

    /**
     * @param Request $request
     * @param $id
     * @return array
     * @author Sang Nguyen
     */
    public function getDelete(Request $request, $id)
    {
        try {
            $application = $this->applicationRepository->findById($id);
            if (empty($application)) {
                abort(404);
            }
            $this->applicationRepository->delete($application);

            // do_action(BASE_ACTION_AFTER_DELETE_CONTENT, CAREER_MODULE_SCREEN_NAME, $request, $application);

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
            $application = $this->applicationRepository->findById($id);
            $this->applicationRepository->delete($application);
            // do_action(BASE_ACTION_AFTER_DELETE_CONTENT, CAREER_MODULE_SCREEN_NAME, $request, $career);
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
    // public function postChangeStatus(Request $request)
    // {
    //     $ids = $request->input('ids');
    //     if (empty($ids)) {
    //         return [
    //             'error' => true,
    //             'message' => trans('bases::notices.no_select'),
    //         ];
    //     }

    //     foreach ($ids as $id) {
    //         $career = $this->applicationRepository->findById($id);
    //         $career->status = $request->input('status');
    //         $this->applicationRepository->createOrUpdate($career);

    //         do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, CAREER_MODULE_SCREEN_NAME, $request, $career);
    //     }

    //     return [
    //         'error' => false,
    //         'status' => $request->input('status'),
    //         'message' => trans('bases::notices.update_success_message'),
    //     ];
    // }
}
