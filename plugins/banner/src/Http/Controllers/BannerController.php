<?php

namespace Botble\Banner\Http\Controllers;

use Assets;
use Botble\Banner\Http\Requests\BannerRequest;
use Botble\Banner\Repositories\Interfaces\BannerInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Banner\Http\DataTables\BannerDataTable;

class BannerController extends BaseController
{
    /**
     * @var BannerInterface
     */
    protected $bannerRepository;

    /**
     * BannerController constructor.
     * @param BannerInterface $bannerRepository
     * @author Sang Nguyen
     */
    public function __construct(BannerInterface $bannerRepository)
    {
        $this->bannerRepository = $bannerRepository;
    }

    /**
     * Display all banner
     * @param BannerDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(BannerDataTable $dataTable)
    {

        page_title()->setTitle(trans('banner::banner.list'));

        return $dataTable->renderTable(['title' => trans('banner::banner.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('banner::banner.create'));

        return view('banner::create');
    }

    /**
     * Insert new Banner into database
     *
     * @param BannerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(BannerRequest $request)
    {
        $banner = $this->bannerRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, BANNER_MODULE_SCREEN_NAME, $request, $banner);

        if ($request->input('submit') === 'save') {
            return redirect()->route('banner.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('banner.edit', $banner->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $banner = $this->bannerRepository->findById($id);
        if (empty($banner)) {
            abort(404);
        }

        page_title()->setTitle(trans('banner::banner.edit') . ' #' . $id);

        return view('banner::edit', compact('banner'));
    }

    /**
     * @param $id
     * @param BannerRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, BannerRequest $request)
    {
        $banner = $this->bannerRepository->findById($id);
        if (empty($banner)) {
            abort(404);
        }
        $banner->fill($request->input());

        $this->bannerRepository->createOrUpdate($banner);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, BANNER_MODULE_SCREEN_NAME, $request, $banner);

        if ($request->input('submit') === 'save') {
            return redirect()->route('banner.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('banner.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $banner = $this->bannerRepository->findById($id);
            if (empty($banner)) {
                abort(404);
            }
            $this->bannerRepository->delete($banner);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, BANNER_MODULE_SCREEN_NAME, $request, $banner);

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
            $banner = $this->bannerRepository->findById($id);
            $this->bannerRepository->delete($banner);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, BANNER_MODULE_SCREEN_NAME, $request, $banner);
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
            $banner = $this->bannerRepository->findById($id);
            $banner->status = $request->input('status');
            $this->bannerRepository->createOrUpdate($banner);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, BANNER_MODULE_SCREEN_NAME, $request, $banner);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
