<?php

namespace Botble\Donation\Http\Controllers;

use Assets;
use Botble\Donation\Http\Requests\DonationRequest;
use Botble\Donation\Repositories\Interfaces\DonationInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Donation\Http\DataTables\DonationDataTable;
use Botble\Contactaccountmanager\Models\State;

class DonationController extends BaseController
{
    /**
     * @var DonationInterface
     */
    protected $donationRepository;

    /**
     * DonationController constructor.
     * @param DonationInterface $donationRepository
     * @author Sang Nguyen
     */
    public function __construct(DonationInterface $donationRepository)
    {
        $this->donationRepository = $donationRepository;
    }

    /**
     * Display all donation
     * @param DonationDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(DonationDataTable $dataTable)
    {

        page_title()->setTitle(trans('donation::donation.list'));

        return $dataTable->renderTable(['title' => trans('donation::donation.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('donation::donation.create'));

        return view('donation::create');
    }

    /**
     * Insert new Donation into database
     *
     * @param DonationRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(DonationRequest $request)
    {
        $donation = $this->donationRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, DONATION_MODULE_SCREEN_NAME, $request, $donation);

        if ($request->input('submit') === 'save') {
            return redirect()->route('donation.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('donation.edit', $donation->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $donation = $this->donationRepository->findById($id);
        if (empty($donation)) {
            abort(404);
        }

        $states = State::orderBy('ordering', 'asc')->get()->pluck('name', 'id')->toArray();
        $states = array(''=>'') + $states;

        page_title()->setTitle(trans('donation::donation.edit') . ' #' . $id);

        return view('donation::edit', compact('donation', 'states'));
    }

    /**
     * @param $id
     * @param DonationRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, DonationRequest $request)
    {
        $donation = $this->donationRepository->findById($id);
        if (empty($donation)) {
            abort(404);
        }
        $donation->fill($request->input());

        $this->donationRepository->createOrUpdate($donation);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, DONATION_MODULE_SCREEN_NAME, $request, $donation);

        if ($request->input('submit') === 'save') {
            return redirect()->route('donation.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('donation.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $donation = $this->donationRepository->findById($id);
            if (empty($donation)) {
                abort(404);
            }
            $this->donationRepository->delete($donation);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, DONATION_MODULE_SCREEN_NAME, $request, $donation);

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
            $donation = $this->donationRepository->findById($id);
            $this->donationRepository->delete($donation);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, DONATION_MODULE_SCREEN_NAME, $request, $donation);
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
            $donation = $this->donationRepository->findById($id);
            $donation->status = $request->input('status');
            $this->donationRepository->createOrUpdate($donation);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, DONATION_MODULE_SCREEN_NAME, $request, $donation);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
