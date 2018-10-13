<?php

namespace Botble\Newsletter\Http\DataTables;

use Botble\Base\Http\DataTables\DataTableAbstract;
use Botble\Newsletter\Repositories\Interfaces\NewsletterInterface;

class NewsletterDataTable extends DataTableAbstract
{
    /**
     * Display ajax response.
     *
     * @return \Illuminate\Http\JsonResponse
     * @author Sang Nguyen
     * @since 2.1
     */
    public function ajax()
    {
        $data = $this->datatables
            ->eloquent($this->query())
            ->editColumn('email', function ($item) {
                return anchor_link(route('newsletter.edit', $item->id), $item->email);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('cms.date_format.date'));
            })
            ->editColumn('status', function ($item) {
                return table_status($item->status);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, NEWSLETTER_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return table_actions('newsletter.edit', 'newsletter.delete', $item);
            })
            ->escapeColumns([])
            ->make(true);
    }

    /**
     * Get the query object to be processed by datatables.
     *
     * @return \Illuminate\Database\Query\Builder|\Illuminate\Database\Eloquent\Builder
     * @author Sang Nguyen
     * @since 2.1
     */
    public function query()
    {
       $model = app(NewsletterInterface::class)->getModel();
       /**
        * @var \Eloquent $model
        */
       $query = $model->select(['newsletter.id', 'newsletter.name', 'newsletter.email', 'newsletter.created_at']);
       return $this->applyScopes(apply_filters(BASE_FILTER_DATATABLES_QUERY, $query, $model, NEWSLETTER_MODULE_SCREEN_NAME));
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function columns()
    {
        return [
            // 'id' => [
            //     'name' => 'newsletter.id',
            //     'title' => trans('bases::tables.id'),
            //     'width' => '20px',
            //     'class' => 'searchable searchable_id',
            // ],
            'email' => [
                'name' => 'newsletter.email',
                'title' => trans('bases::tables.email'),
                'class' => 'text-left searchable',
                
            ],
            'name' => [
                'name' => 'newsletter.name',
                'title' => trans('bases::tables.name'),
                'width' => '100px',
            ],
            'created_at' => [
                'name' => 'newsletter.created_at',
                'title' => trans('bases::tables.created_at'),
                'width' => '100px',
                'class' => 'searchable',
            ]
        ];
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function buttons()
    {
        $buttons = [
            // 'create' => [
            //     'link' => route('newsletter.create'),
            //     'text' => view('bases::elements.tables.actions.create')->render(),
            // ],
        ];
        return apply_filters(BASE_FILTER_DATATABLES_BUTTONS, $buttons, NEWSLETTER_MODULE_SCREEN_NAME);
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function actions()
    {
        return [
            'delete' => [
                'link' => route('newsletter.delete.many'),
                'text' => view('bases::elements.tables.actions.delete')->render(),
            ],
            // 'activate' => [
            //     'link' => route('newsletter.change.status', ['status' => 1]),
            //     'text' => view('bases::elements.tables.actions.activate')->render(),
            // ],
            // 'deactivate' => [
            //     'link' => route('newsletter.change.status', ['status' => 0]),
            //     'text' => view('bases::elements.tables.actions.deactivate')->render(),
            // ]
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     * @author Sang Nguyen
     * @since 2.1
     */
    protected function filename()
    {
        return NEWSLETTER_MODULE_SCREEN_NAME;
    }

    public function getDefaultButtons()
    {
        return ['export'];
    }
}
