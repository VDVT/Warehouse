<?php

namespace Botble\Services\Http\Controllers;

use Assets;
use Botble\Services\Http\Requests\ServicesRequest;
use Botble\Services\Repositories\Interfaces\ServicesInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Services\Http\DataTables\ServicesDataTable;

class CustomerController extends BaseController
{
    /**
     * @var ServicesInterface
     */
    protected $servicesRepository;

    /**
     * ServicesController constructor.
     * @param ServicesInterface $servicesRepository
     * @author Sang Nguyen
     */
    public function __construct(ServicesInterface $servicesRepository)
    {
        $this->servicesRepository = $servicesRepository;
    }

    /**
     * Display all services
     * @param ServicesDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(ServicesDataTable $dataTable)
    {

        page_title()->setTitle(trans('services::services.list'));

        return $dataTable->renderTable(['title' => trans('services::services.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('services::services.create'));

        return view('services::create');
    }

    /**
     * Insert new Services into database
     *
     * @param ServicesRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(ServicesRequest $request)
    {
        $services = $this->servicesRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, SERVICES_MODULE_SCREEN_NAME, $request, $services);

        if ($request->input('submit') === 'save') {
            return redirect()->route('services.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('services.edit', $services->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $services = $this->servicesRepository->findById($id);
        if (empty($services)) {
            abort(404);
        }

        page_title()->setTitle(trans('services::services.edit') . ' #' . $id);

        return view('services::edit', compact('services'));
    }

    /**
     * @param $id
     * @param ServicesRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, ServicesRequest $request)
    {
        $services = $this->servicesRepository->findById($id);
        if (empty($services)) {
            abort(404);
        }
        $services->fill($request->input());

        $this->servicesRepository->createOrUpdate($services);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, SERVICES_MODULE_SCREEN_NAME, $request, $services);

        if ($request->input('submit') === 'save') {
            return redirect()->route('services.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('services.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $services = $this->servicesRepository->findById($id);
            if (empty($services)) {
                abort(404);
            }
            $this->servicesRepository->delete($services);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, SERVICES_MODULE_SCREEN_NAME, $request, $services);

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
            $services = $this->servicesRepository->findById($id);
            $this->servicesRepository->delete($services);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, SERVICES_MODULE_SCREEN_NAME, $request, $services);
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
            $services = $this->servicesRepository->findById($id);
            $services->status = $request->input('status');
            $this->servicesRepository->createOrUpdate($services);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, SERVICES_MODULE_SCREEN_NAME, $request, $services);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
