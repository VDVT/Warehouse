<?php

namespace Botble\Industrials\Http\Controllers;

use Assets;
use Botble\Industrials\Http\Requests\IndustrialsRequest;
use Botble\Industrials\Repositories\Interfaces\IndustrialsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Industrials\Http\DataTables\IndustrialsDataTable;
use Botble\Industrials\Services\StoreProjectService;
use Botble\Industrials\Services\StoreProductsolutionService;
use Botble\Testimonials\Repositories\Interfaces\TestimonialsInterface;

class IndustrialsController extends BaseController
{
    /**
     * @var IndustrialsInterface
     */
    protected $industrialsRepository;
    protected $testimonialsRepository;

    /**
     * IndustrialsController constructor.
     * @param IndustrialsInterface $industrialsRepository
     * @author Sang Nguyen
     */
    public function __construct(IndustrialsInterface $industrialsRepository, TestimonialsInterface $testimonialsRepository)
    {
        $this->industrialsRepository = $industrialsRepository;
        $this->testimonialsRepository = $testimonialsRepository;
    }

    /**
     * Display all industrials
     * @param IndustrialsDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(IndustrialsDataTable $dataTable)
    {

        page_title()->setTitle(trans('industrials::industrials.list'));

        return $dataTable->renderTable(['title' => trans('industrials::industrials.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        $testimonials = $this->testimonialsRepository->all()->pluck('name', 'id')->toArray();

        // if (empty($testimonials)) {
        //     abort(404);
        // }

        Assets::addAppModule(['slug']);

        page_title()->setTitle(trans('industrials::industrials.create'));

        return view('industrials::create', compact('testimonials'));
    }

    /**
     * Insert new Industrials into database
     *
     * @param IndustrialsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(IndustrialsRequest $request, StoreProjectService $projectService, StoreProductsolutionService $productsolutionService)
    {
        $industrials = $this->industrialsRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, INDUSTRIALS_MODULE_SCREEN_NAME, $request, $industrials);

        $projectService->executeProject($request, $industrials);
        $productsolutionService->executeProductsolution($request, $industrials);

        if ($request->input('submit') === 'save') {
            return redirect()->route('industrials.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('industrials.edit', $industrials->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $industrial_details = $this->industrialsRepository->findById($id);
// dd($industrials->id);
        if (empty($industrial_details)) {
            abort(404);
        }
        
        Assets::addAppModule(['slug']);

        $testimonials = $this->testimonialsRepository->all()->pluck('name', 'id')->toArray();
        $recent_projects = $industrial_details->projects()->orderBy('industrial_project.id', 'asc')->get();
        $key_solutions = $industrial_details->product_solutions()->orderBy('industrial_product_solution.id', 'asc')->get();

        page_title()->setTitle(trans('industrials::industrials.edit') . ' #' . $id);


        return view('industrials::edit', compact('industrial_details', 'testimonials', 'recent_projects', 'key_solutions'));
    }

    /**
     * @param $id
     * @param IndustrialsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, IndustrialsRequest $request, StoreProjectService $projectService, StoreProductsolutionService $productsolutionService)
    {
        $industrials = $this->industrialsRepository->findById($id);
        if (empty($industrials)) {
            abort(404);
        }
        $industrials->fill($request->input());

        $this->industrialsRepository->createOrUpdate($industrials);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, INDUSTRIALS_MODULE_SCREEN_NAME, $request, $industrials);

        $projectService->executeProject($request, $industrials);
        $productsolutionService->executeProductsolution($request, $industrials);

        if ($request->input('submit') === 'save') {
            return redirect()->route('industrials.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('industrials.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $industrials = $this->industrialsRepository->findById($id);
            if (empty($industrials)) {
                abort(404);
            }
            $this->industrialsRepository->delete($industrials);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, INDUSTRIALS_MODULE_SCREEN_NAME, $request, $industrials);

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
            $industrials = $this->industrialsRepository->findById($id);
            $this->industrialsRepository->delete($industrials);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, INDUSTRIALS_MODULE_SCREEN_NAME, $request, $industrials);
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
            $industrials = $this->industrialsRepository->findById($id);
            $industrials->status = $request->input('status');
            $this->industrialsRepository->createOrUpdate($industrials);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, INDUSTRIALS_MODULE_SCREEN_NAME, $request, $industrials);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }

    public function postCreateSlug(Request $request)
    {
        return $this->industrialsRepository->createSlug($request->input('name'), $request->input('id'));
    }
}
