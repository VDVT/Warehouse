<?php

namespace Botble\Contactaccountmanager\Http\Controllers;

use Assets;
use Botble\Contactaccountmanager\Http\Requests\ContactaccountmanagerRequest;
use Botble\Contactaccountmanager\Repositories\Interfaces\ContactaccountmanagerInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Contactaccountmanager\Http\DataTables\ContactaccountmanagerDataTable;
use Botble\Contactaccountmanager\Models\State;

class ContactaccountmanagerController extends BaseController
{
    /**
     * @var ContactaccountmanagerInterface
     */
    protected $contactaccountmanagerRepository;

    /**
     * ContactaccountmanagerController constructor.
     * @param ContactaccountmanagerInterface $contactaccountmanagerRepository
     * @author Sang Nguyen
     */
    public function __construct(ContactaccountmanagerInterface $contactaccountmanagerRepository)
    {
        $this->contactaccountmanagerRepository = $contactaccountmanagerRepository;
    }

    /**
     * Display all contactaccountmanager
     * @param ContactaccountmanagerDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(ContactaccountmanagerDataTable $dataTable)
    {

        page_title()->setTitle(trans('contactaccountmanager::contactaccountmanager.list'));

        return $dataTable->renderTable(['title' => trans('contactaccountmanager::contactaccountmanager.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('contactaccountmanager::contactaccountmanager.create'));

        return view('contactaccountmanager::create');
    }

    /**
     * Insert new Contactaccountmanager into database
     *
     * @param ContactaccountmanagerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(ContactaccountmanagerRequest $request)
    {
        $contactaccountmanager = $this->contactaccountmanagerRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME, $request, $contactaccountmanager);

        if ($request->input('submit') === 'save') {
            return redirect()->route('contactaccountmanager.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('contactaccountmanager.edit', $contactaccountmanager->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $states = State::orderBy('ordering', 'asc')->get()->pluck('name', 'id')->toArray();
        $states = array(''=>'') + $states;

        $contactaccountmanager = $this->contactaccountmanagerRepository->findById($id);
        if (empty($contactaccountmanager)) {
            abort(404);
        }

        page_title()->setTitle(trans('contactaccountmanager::contactaccountmanager.edit') . ' #' . $id);

        return view('contactaccountmanager::edit', compact('contactaccountmanager', 'states'));
    }

    /**
     * @param $id
     * @param ContactaccountmanagerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, ContactaccountmanagerRequest $request)
    {
        $contactaccountmanager = $this->contactaccountmanagerRepository->findById($id);
        if (empty($contactaccountmanager)) {
            abort(404);
        }
        $contactaccountmanager->fill($request->input());

        $this->contactaccountmanagerRepository->createOrUpdate($contactaccountmanager);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME, $request, $contactaccountmanager);

        if ($request->input('submit') === 'save') {
            return redirect()->route('contactaccountmanager.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('contactaccountmanager.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $contactaccountmanager = $this->contactaccountmanagerRepository->findById($id);
            if (empty($contactaccountmanager)) {
                abort(404);
            }
            $this->contactaccountmanagerRepository->delete($contactaccountmanager);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME, $request, $contactaccountmanager);

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
            $contactaccountmanager = $this->contactaccountmanagerRepository->findById($id);
            $this->contactaccountmanagerRepository->delete($contactaccountmanager);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME, $request, $contactaccountmanager);
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
            $contactaccountmanager = $this->contactaccountmanagerRepository->findById($id);
            $contactaccountmanager->status = $request->input('status');
            $this->contactaccountmanagerRepository->createOrUpdate($contactaccountmanager);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME, $request, $contactaccountmanager);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
