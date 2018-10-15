<?php

namespace Botble\Customers\Http\Controllers;

use Assets;
use Botble\Customers\Http\Requests\CustomersRequest;
use Botble\Customers\Repositories\Interfaces\CustomersInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Customers\Http\DataTables\CustomersDataTable;

class CustomersController extends BaseController
{
    /**
     * @var CustomersInterface
     */
    protected $customersRepository;

    /**
     * CustomersController constructor.
     * @param CustomersInterface $customersRepository
     * @author Sang Nguyen
     */
    public function __construct(CustomersInterface $customersRepository)
    {
        $this->customersRepository = $customersRepository;
    }

    /**
     * Display all customers
     * @param CustomersDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(CustomersDataTable $dataTable)
    {

        page_title()->setTitle(trans('customers::customers.list'));

        return $dataTable->renderTable(['title' => trans('customers::customers.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('customers::customers.create'));

        return view('customers::create');
    }

    /**
     * Insert new Customers into database
     *
     * @param CustomersRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(CustomersRequest $request)
    {
        $customers = $this->customersRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, CUSTOMERS_MODULE_SCREEN_NAME, $request, $customers);

        if ($request->input('submit') === 'save') {
            return redirect()->route('customers.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('customers.edit', $customers->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $customers = $this->customersRepository->findById($id);
        if (empty($customers)) {
            abort(404);
        }

        page_title()->setTitle(trans('customers::customers.edit') . ' #' . $id);

        return view('customers::edit', compact('customers'));
    }

    /**
     * @param $id
     * @param CustomersRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, CustomersRequest $request)
    {
        $customers = $this->customersRepository->findById($id);
        if (empty($customers)) {
            abort(404);
        }
        $customers->fill($request->input());

        $this->customersRepository->createOrUpdate($customers);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, CUSTOMERS_MODULE_SCREEN_NAME, $request, $customers);

        if ($request->input('submit') === 'save') {
            return redirect()->route('customers.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('customers.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $customers = $this->customersRepository->findById($id);
            if (empty($customers)) {
                abort(404);
            }
            $this->customersRepository->delete($customers);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, CUSTOMERS_MODULE_SCREEN_NAME, $request, $customers);

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
            $customers = $this->customersRepository->findById($id);
            $this->customersRepository->delete($customers);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, CUSTOMERS_MODULE_SCREEN_NAME, $request, $customers);
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
            $customers = $this->customersRepository->findById($id);
            $customers->status = $request->input('status');
            $this->customersRepository->createOrUpdate($customers);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, CUSTOMERS_MODULE_SCREEN_NAME, $request, $customers);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
