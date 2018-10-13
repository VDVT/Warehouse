<?php

namespace Botble\Career\Http\DataTables;

use Botble\Base\Http\DataTables\DataTableAbstract;
use Botble\Career\Repositories\Interfaces\ApplicationInterface;

class ApplicationDataTable extends DataTableAbstract
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
            // ->editColumn('name', function ($item) {
            //     return anchor_link(route('career.edit', $item->id), $item->name);
            // })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('cms.date_format.date'));
            });
            // ->editColumn('status', function ($item) {
            //     return table_status($item->status);
            // });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, CAREER_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                // return table_actions('career.edit', 'career.delete', $item);

                return '
                    <div class="table-actions">
                        <a href="'.route("applicationform.edit", $item->id).'" class="btn btn-icon btn-sm btn-primary tip" data-original-title="'.trans("career::applicationform.view").'"><i class="fa fa-eye"></i></a>

                        <a class="btn btn-icon btn-sm btn-danger deleteDialog tip" data-toggle="modal" data-section="'.route("applicationform.delete", $item->id).'" role="button" data-original-title="'.trans("bases::tables.delete_entry").'" >
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
       $model = app(ApplicationInterface::class)->getModel();
       /**
        * @var \Eloquent $model
        */
       $query = $model->select(['application_forms.id', 'application_forms.first_name', 'application_forms.last_name', 'application_forms.created_at', 'application_forms.email']);
       return $this->applyScopes(apply_filters(BASE_FILTER_DATATABLES_QUERY, $query, $model, CAREER_MODULE_SCREEN_NAME));
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
                'name' => 'application_forms.id',
                'title' => trans('bases::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'first_name' => [
                'name' => 'application_forms.first_name',
                'title' => trans('career::applicationform.forms.first_name'),
                'class' => 'text-left searchable',
            ],
            'last_name' => [
                'name' => 'application_forms.last_name',
                'title' => trans('career::applicationform.forms.last_name'),
                'class' => 'text-left searchable',
            ],
            'email' => [
                'name' => 'application_forms.email',
                'title' => trans('career::applicationform.forms.email'),
                'class' => 'text-left searchable',
            ],
            'created_at' => [
                'name' => 'application_forms.created_at',
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
            //     'link' => route('career.create'),
            //     'text' => view('bases::elements.tables.actions.create')->render(),
            // ],
        ];
        return apply_filters(BASE_FILTER_DATATABLES_BUTTONS, $buttons, CAREER_MODULE_SCREEN_NAME);
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
                'link' => route('applicationform.delete.many'),
                'text' => view('bases::elements.tables.actions.delete')->render(),
            ],
            // 'activate' => [
            //     'link' => route('career.change.status', ['status' => 1]),
            //     'text' => view('bases::elements.tables.actions.activate')->render(),
            // ],
            // 'deactivate' => [
            //     'link' => route('career.change.status', ['status' => 0]),
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
        return CAREER_MODULE_SCREEN_NAME;
    }
}
