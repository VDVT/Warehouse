<?php

namespace Botble\Contact\Http\DataTables;

use Botble\Base\Http\DataTables\DataTableAbstract;
use Botble\Contact\Repositories\Interfaces\ContactInterface;

class ContactDataTable extends DataTableAbstract
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
            ->editColumn('name', function ($item) {
                return anchor_link(route('contacts.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('cms.date_format.date'));
            })
            ->editColumn('is_read', function ($item) {
                return table_status($item->is_read, [
                    0 => [
                        'color' => 'label-success',
                        'text' => trans('contact::contact.read'),
                    ],
                    1 => [
                        'color' => 'label-warning',
                        'text' => trans('contact::contact.unread'),
                    ],
                ]);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, CONTACT_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                // return table_actions('contacts.edit', 'contacts.delete', $item);
                return '
                    <div class="table-actions">
                        <a href="'.route("contacts.edit", $item->id).'" class="btn btn-icon btn-sm btn-primary tip" data-original-title="'.trans("bases::tables.edit").'"><i class="fa fa-eye"></i></a>

                        <a class="btn btn-icon btn-sm btn-danger deleteDialog tip" data-toggle="modal" data-section="'.route("contacts.delete", $item->id).'" role="button" data-original-title="'.trans("bases::tables.delete_entry").'" >
                            <i class="fa fa-trash-o"></i>
                        </a>
                    </div>
                ';
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
        $model = app(ContactInterface::class)->getModel();
        /**
         * @var \Eloquent $model
         */
        $query = $model->select(['contacts.id', 'contacts.name', 'contacts.phone', 'contacts.company_name', 'contacts.created_at', 'contacts.is_read']);
        return $this->applyScopes(apply_filters(BASE_FILTER_DATATABLES_QUERY, $query, $model, CONTACT_MODULE_SCREEN_NAME));
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function columns()
    {
        return [
            'id' => [
                'name' => 'contacts.id',
                'title' => trans('bases::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'name' => [
                'name' => 'contacts.name',
                'title' => trans('bases::tables.name'),
                'class' => 'text-left searchable',
            ],
            'phone' => [
                'name' => 'contacts.phone',
                'title' => trans('contact::contact.tables.phone'),
                'class' => 'searchable',
            ],
            'company_name' => [
                'name' => 'contacts.company_name',
                'title' => trans('contact::contact.tables.company_name'),
                'class' => 'searchable',
            ],
            'created_at' => [
                'name' => 'contacts.created_at',
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
        $buttons = [];
        return apply_filters(BASE_FILTER_DATATABLES_BUTTONS, $buttons, CONTACT_MODULE_SCREEN_NAME);
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
                'link' => route('contacts.delete.many'),
                'text' => view('bases::elements.tables.actions.delete')->render(),
            ],
            // 'activate' => [
            //     'link' => route('contacts.change.status', ['status' => 1]),
            //     'text' => view('contact::partials.actions.mark-read')->render(),
            // ],
            // 'deactivate' => [
            //     'link' => route('contacts.change.status', ['status' => 0]),
            //     'text' => view('contact::partials.actions.mark-unread')->render(),
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
        return CONTACT_MODULE_SCREEN_NAME;
    }
}
