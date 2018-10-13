<?php

namespace Botble\Projectcompletion\Http\DataTables;

use Botble\Base\Http\DataTables\DataTableAbstract;
use Botble\Projectcompletion\Repositories\Interfaces\ProjectcompletionInterface;

class ProjectcompletionDataTable extends DataTableAbstract
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
                return anchor_link(route('projectcompletion.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('cms.date_format.date'));
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, PROJECTCOMPLETION_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                // return table_actions('projectcompletion.edit', 'projectcompletion.delete', $item);
                return '
                    <div class="table-actions">
                        <a href="'.route("projectcompletion.edit", $item->id).'" class="btn btn-icon btn-sm btn-primary tip" data-original-title="'.trans("projectcompletion::projectcompletion.view").'"><i class="fa fa-eye"></i></a>

                        <a class="btn btn-icon btn-sm btn-danger deleteDialog tip" data-toggle="modal" data-section="'.route("projectcompletion.delete", $item->id).'" role="button" data-original-title="'.trans("bases::tables.delete_entry").'" >
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
       $model = app(ProjectcompletionInterface::class)->getModel();
       /**
        * @var \Eloquent $model
        */
       $query = $model->orderBy('projectcompletion.created_at', 'desc')->select(['projectcompletion.id', 'projectcompletion.name', 'projectcompletion.foreman', 'projectcompletion.created_at']);
       return $this->applyScopes(apply_filters(BASE_FILTER_DATATABLES_QUERY, $query, $model, PROJECTCOMPLETION_MODULE_SCREEN_NAME));
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
                'name' => 'projectcompletion.id',
                'title' => trans('bases::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'name' => [
                'name' => 'projectcompletion.name',
                'title' => trans('bases::tables.name'),
                'class' => 'text-left searchable',
            ],
            'foreman' => [
                'name' => 'projectcompletion.foreman',
                'title' => trans('projectcompletion::projectcompletion.forms.foreman'),
                'class' => 'text-left searchable',
            ],
            'created_at' => [
                'name' => 'projectcompletion.created_at',
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
            //     'link' => route('projectcompletion.create'),
            //     'text' => view('bases::elements.tables.actions.create')->render(),
            // ],
        ];
        return apply_filters(BASE_FILTER_DATATABLES_BUTTONS, $buttons, PROJECTCOMPLETION_MODULE_SCREEN_NAME);
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
                'link' => route('projectcompletion.delete.many'),
                'text' => view('bases::elements.tables.actions.delete')->render(),
            ],
            // 'activate' => [
            //     'link' => route('projectcompletion.change.status', ['status' => 1]),
            //     'text' => view('bases::elements.tables.actions.activate')->render(),
            // ],
            // 'deactivate' => [
            //     'link' => route('projectcompletion.change.status', ['status' => 0]),
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
        return PROJECTCOMPLETION_MODULE_SCREEN_NAME;
    }
}
