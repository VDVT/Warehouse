<?php

namespace Botble\Newsletter\Http\Controllers;

use Assets;
use Botble\Newsletter\Http\Requests\NewsletterRequest;
use Botble\Newsletter\Repositories\Interfaces\NewsletterInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Newsletter\Http\DataTables\NewsletterDataTable;

class NewsletterController extends BaseController
{
    /**
     * @var NewsletterInterface
     */
    protected $newsletterRepository;

    /**
     * NewsletterController constructor.
     * @param NewsletterInterface $newsletterRepository
     * @author Sang Nguyen
     */
    public function __construct(NewsletterInterface $newsletterRepository)
    {
        $this->newsletterRepository = $newsletterRepository;
    }

    /**
     * Display all newsletter
     * @param NewsletterDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(NewsletterDataTable $dataTable)
    {

        page_title()->setTitle(trans('newsletter::newsletter.list'));

        return $dataTable->renderTable(['title' => trans('newsletter::newsletter.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('newsletter::newsletter.create'));

        return view('newsletter::create');
    }

    /**
     * Insert new Newsletter into database
     *
     * @param NewsletterRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(NewsletterRequest $request)
    {
        $newsletter = $this->newsletterRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, NEWSLETTER_MODULE_SCREEN_NAME, $request, $newsletter);

        if ($request->input('submit') === 'save') {
            return redirect()->route('newsletter.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('newsletter.edit', $newsletter->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $newsletter = $this->newsletterRepository->findById($id);
        if (empty($newsletter)) {
            abort(404);
        }

        page_title()->setTitle(trans('newsletter::newsletter.edit') . ' #' . $id);

        return view('newsletter::edit', compact('newsletter'));
    }

    /**
     * @param $id
     * @param NewsletterRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, NewsletterRequest $request)
    {
        $newsletter = $this->newsletterRepository->findById($id);
        if (empty($newsletter)) {
            abort(404);
        }
        $newsletter->fill($request->input());

        $this->newsletterRepository->createOrUpdate($newsletter);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, NEWSLETTER_MODULE_SCREEN_NAME, $request, $newsletter);

        if ($request->input('submit') === 'save') {
            return redirect()->route('newsletter.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('newsletter.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $newsletter = $this->newsletterRepository->findById($id);
            if (empty($newsletter)) {
                abort(404);
            }
            $this->newsletterRepository->delete($newsletter);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, NEWSLETTER_MODULE_SCREEN_NAME, $request, $newsletter);

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
            $newsletter = $this->newsletterRepository->findById($id);
            $this->newsletterRepository->delete($newsletter);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, NEWSLETTER_MODULE_SCREEN_NAME, $request, $newsletter);
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
            $newsletter = $this->newsletterRepository->findById($id);
            $newsletter->status = $request->input('status');
            $this->newsletterRepository->createOrUpdate($newsletter);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, NEWSLETTER_MODULE_SCREEN_NAME, $request, $newsletter);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
