<?php

namespace Botble\Testimonials\Http\Controllers;

use Assets;
use Botble\Testimonials\Http\Requests\TestimonialsRequest;
use Botble\Testimonials\Repositories\Interfaces\TestimonialsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Testimonials\Http\DataTables\TestimonialsDataTable;

class TestimonialsController extends BaseController
{
    /**
     * @var TestimonialsInterface
     */
    protected $testimonialsRepository;

    /**
     * TestimonialsController constructor.
     * @param TestimonialsInterface $testimonialsRepository
     * @author Sang Nguyen
     */
    public function __construct(TestimonialsInterface $testimonialsRepository)
    {
        $this->testimonialsRepository = $testimonialsRepository;
    }

    /**
     * Display all testimonials
     * @param TestimonialsDataTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getList(TestimonialsDataTable $dataTable)
    {

        page_title()->setTitle(trans('testimonials::testimonials.list'));

        return $dataTable->renderTable(['title' => trans('testimonials::testimonials.list')]);
    }

    /**
     * Show create form
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getCreate()
    {
        page_title()->setTitle(trans('testimonials::testimonials.create'));

        return view('testimonials::create');
    }

    /**
     * Insert new Testimonials into database
     *
     * @param TestimonialsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreate(TestimonialsRequest $request)
    {
        $testimonials = $this->testimonialsRepository->createOrUpdate($request->input());

        do_action(BASE_ACTION_AFTER_CREATE_CONTENT, TESTIMONIALS_MODULE_SCREEN_NAME, $request, $testimonials);

        if ($request->input('submit') === 'save') {
            return redirect()->route('testimonials.list')->with('success_msg', trans('bases::notices.create_success_message'));
        } else {
            return redirect()->route('testimonials.edit', $testimonials->id)->with('success_msg', trans('bases::notices.create_success_message'));
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
        $testimonials = $this->testimonialsRepository->findById($id);
        if (empty($testimonials)) {
            abort(404);
        }

        page_title()->setTitle(trans('testimonials::testimonials.edit') . ' #' . $id);

        return view('testimonials::edit', compact('testimonials'));
    }

    /**
     * @param $id
     * @param TestimonialsRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEdit($id, TestimonialsRequest $request)
    {
        $testimonials = $this->testimonialsRepository->findById($id);
        if (empty($testimonials)) {
            abort(404);
        }
        $testimonials->fill($request->input());

        $this->testimonialsRepository->createOrUpdate($testimonials);

        do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, TESTIMONIALS_MODULE_SCREEN_NAME, $request, $testimonials);

        if ($request->input('submit') === 'save') {
            return redirect()->route('testimonials.list')->with('success_msg', trans('bases::notices.update_success_message'));
        } else {
            return redirect()->route('testimonials.edit', $id)->with('success_msg', trans('bases::notices.update_success_message'));
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
            $testimonials = $this->testimonialsRepository->findById($id);
            if (empty($testimonials)) {
                abort(404);
            }
            $this->testimonialsRepository->delete($testimonials);

            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, TESTIMONIALS_MODULE_SCREEN_NAME, $request, $testimonials);

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
            $testimonials = $this->testimonialsRepository->findById($id);
            $this->testimonialsRepository->delete($testimonials);
            do_action(BASE_ACTION_AFTER_DELETE_CONTENT, TESTIMONIALS_MODULE_SCREEN_NAME, $request, $testimonials);
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
            $testimonials = $this->testimonialsRepository->findById($id);
            $testimonials->status = $request->input('status');
            $this->testimonialsRepository->createOrUpdate($testimonials);

            do_action(BASE_ACTION_AFTER_UPDATE_CONTENT, TESTIMONIALS_MODULE_SCREEN_NAME, $request, $testimonials);
        }

        return [
            'error' => false,
            'status' => $request->input('status'),
            'message' => trans('bases::notices.update_success_message'),
        ];
    }
}
