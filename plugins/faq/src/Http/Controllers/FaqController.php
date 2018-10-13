<?php

namespace Botble\Faq\Http\Controllers;

use Assets;
use Botble\Faq\Http\Requests\FaqRequest;
use Botble\Faq\Repositories\Interfaces\FaqInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Faq\Http\DataTables\FaqDataTable;

class FaqController extends BaseController
{
    /**
     * @var FaqInterface
     */
    protected $faqRepository;

    /**
     * FaqController constructor.
     * @param FaqInterface $faqRepository
     * @author Sang Nguyen
     */
    public function __construct(FaqInterface $faqRepository)
    {
        $this->faqRepository = $faqRepository;
    }

    /**
     * Display all faq
     * @param FaqDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(FaqDataTable $dataTable)
    {

        page_title()->setTitle(trans('faq::faq.list'));

        return $dataTable->renderTable(['title' => trans('faq::faq.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('faq::faq.create'));

        return view('faq::create');
    }

    /**
     * Insert new Faq into database
     *
     * @param FaqRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(FaqRequest $request)
    {
        $faq = $this->faqRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, FAQ_MODULE_SCREEN_NAME, $request, $faq);

        if ($request->input('submit') === 'save') {
            return redirect()->route('faq.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('faq.edit', $faq->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $faq = $this->faqRepository->findById($id);
        if (empty($faq)) {
            abort(404);
        }

        page_title()->setTitle(trans('faq::faq.edit') . ' #' . $id);

        return view('faq::edit', compact('faq'));
    }

    /**
     * @param $id
     * @param FaqRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, FaqRequest $request)
    {
        $faq = $this->faqRepository->findById($id);
        if (empty($faq)) {
            abort(404);
        }
        $faq->fill($request->input());

        $this->faqRepository->createOrUpdate($faq);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, FAQ_MODULE_SCREEN_NAME, $request, $faq);

        if ($request->input('submit') === 'save') {
            return redirect()->route('faq.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('faq.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $faq = $this->faqRepository->findById($id);
            if (empty($faq)) {
                abort(404);
            }
            $this->faqRepository->delete($faq);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, FAQ_MODULE_SCREEN_NAME, $request, $faq);

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
            $faq = $this->faqRepository->findById($id);
            $this->faqRepository->delete($faq);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, FAQ_MODULE_SCREEN_NAME, $request, $faq);
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
            $faq = $this->faqRepository->findById($id);
            $faq->status = $request->input('status');
            $this->faqRepository->createOrUpdate($faq);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, FAQ_MODULE_SCREEN_NAME, $request, $faq);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
