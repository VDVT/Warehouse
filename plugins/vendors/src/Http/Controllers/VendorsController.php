<?php

namespace Botble\Vendors\Http\Controllers;

use Assets;
use Botble\Vendors\Http\Requests\VendorsRequest;
use Botble\Vendors\Repositories\Interfaces\VendorsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Vendors\Http\DataTables\VendorsDataTable;

class VendorsController extends BaseController
{
    /**
     * @var VendorsInterface
     */
    protected $vendorsRepository;

    /**
     * VendorsController constructor.
     * @param VendorsInterface $vendorsRepository
     * @author Sang Nguyen
     */
    public function __construct(VendorsInterface $vendorsRepository)
    {
        $this->vendorsRepository = $vendorsRepository;
    }

    /**
     * Display all vendors
     * @param VendorsDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(VendorsDataTable $dataTable)
    {

        page_title()->setTitle(trans('vendors::vendors.list'));

        return $dataTable->renderTable(['title' => trans('vendors::vendors.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('vendors::vendors.create'));

        return view('vendors::create');
    }

    /**
     * Insert new Vendors into database
     *
     * @param VendorsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(VendorsRequest $request)
    {
        $vendors = $this->vendorsRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, VENDORS_MODULE_SCREEN_NAME, $request, $vendors);

        if ($request->input('submit') === 'save') {
            return redirect()->route('vendors.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('vendors.edit', $vendors->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $vendors = $this->vendorsRepository->findById($id);
        if (empty($vendors)) {
            abort(404);
        }

        page_title()->setTitle(trans('vendors::vendors.edit') . ' #' . $id);

        return view('vendors::edit', compact('vendors'));
    }

    /**
     * @param $id
     * @param VendorsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, VendorsRequest $request)
    {
        $vendors = $this->vendorsRepository->findById($id);
        if (empty($vendors)) {
            abort(404);
        }
        $vendors->fill($request->input());

        $this->vendorsRepository->createOrUpdate($vendors);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, VENDORS_MODULE_SCREEN_NAME, $request, $vendors);

        if ($request->input('submit') === 'save') {
            return redirect()->route('vendors.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('vendors.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $vendors = $this->vendorsRepository->findById($id);
            if (empty($vendors)) {
                abort(404);
            }
            $this->vendorsRepository->delete($vendors);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, VENDORS_MODULE_SCREEN_NAME, $request, $vendors);

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
            $vendors = $this->vendorsRepository->findById($id);
            $this->vendorsRepository->delete($vendors);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, VENDORS_MODULE_SCREEN_NAME, $request, $vendors);
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
            $vendors = $this->vendorsRepository->findById($id);
            $vendors->status = $request->input('status');
            $this->vendorsRepository->createOrUpdate($vendors);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, VENDORS_MODULE_SCREEN_NAME, $request, $vendors);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
