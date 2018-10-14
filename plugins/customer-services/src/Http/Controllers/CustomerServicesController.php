<?php

namespace Botble\CustomerServices\Http\Controllers;

use Assets;
use Botble\CustomerServices\Http\Requests\CustomerServicesRequest;
use Botble\CustomerServices\Repositories\Interfaces\CustomerServicesInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\CustomerServices\Http\DataTables\CustomerServicesDataTable;

class CustomerServicesController extends BaseController
{
    /**
     * @var CustomerServicesInterface
     */
    protected $customer-servicesRepository;

    /**
     * CustomerServicesController constructor.
     * @param CustomerServicesInterface $customer-servicesRepository
     * @author Sang Nguyen
     */
    public function __construct(CustomerServicesInterface $customer-servicesRepository)
    {
        $this->customer-servicesRepository = $customer-servicesRepository;
    }

    /**
     * Display all customer-services
     * @param CustomerServicesDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(CustomerServicesDataTable $dataTable)
    {

        page_title()->setTitle(trans('customer-services::customer-services.list'));

        return $dataTable->renderTable(['title' => trans('customer-services::customer-services.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('customer-services::customer-services.create'));

        return view('customer-services::create');
    }

    /**
     * Insert new CustomerServices into database
     *
     * @param CustomerServicesRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(CustomerServicesRequest $request)
    {
        $customer-services = $this->customer-servicesRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, $request, $customer-services);

        if ($request->input('submit') === 'save') {
            return redirect()->route('customer-services.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('customer-services.edit', $customer-services->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $customer-services = $this->customer-servicesRepository->findById($id);
        if (empty($customer-services)) {
            abort(404);
        }

        page_title()->setTitle(trans('customer-services::customer-services.edit') . ' #' . $id);

        return view('customer-services::edit', compact('customer-services'));
    }

    /**
     * @param $id
     * @param CustomerServicesRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, CustomerServicesRequest $request)
    {
        $customer-services = $this->customer-servicesRepository->findById($id);
        if (empty($customer-services)) {
            abort(404);
        }
        $customer-services->fill($request->input());

        $this->customer-servicesRepository->createOrUpdate($customer-services);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, $request, $customer-services);

        if ($request->input('submit') === 'save') {
            return redirect()->route('customer-services.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('customer-services.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $customer-services = $this->customer-servicesRepository->findById($id);
            if (empty($customer-services)) {
                abort(404);
            }
            $this->customer-servicesRepository->delete($customer-services);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, $request, $customer-services);

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
            $customer-services = $this->customer-servicesRepository->findById($id);
            $this->customer-servicesRepository->delete($customer-services);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, $request, $customer-services);
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
            $customer-services = $this->customer-servicesRepository->findById($id);
            $customer-services->status = $request->input('status');
            $this->customer-servicesRepository->createOrUpdate($customer-services);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, $request, $customer-services);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
