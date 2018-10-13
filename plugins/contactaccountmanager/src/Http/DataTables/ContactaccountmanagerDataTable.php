<?php

namespace Botble\Contactaccountmanager\Http\DataTables;

use Botble\Base\Http\DataTables\DataTableAbstract;
use Botble\Contactaccountmanager\Repositories\Interfaces\ContactaccountmanagerInterface;

class ContactaccountmanagerDataTable extends DataTableAbstract
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
            //     return anchor_link(route('contactaccountmanager.edit', $item->id), $item->name);
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

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                // return table_actions('contactaccountmanager.edit', 'contactaccountmanager.delete', $item);
                return '
                    <div class="table-actions">
                        <a href="'.route("contactaccountmanager.edit", $item->id).'" class="btn btn-icon btn-sm btn-primary tip" data-original-title="'.trans("bases::tables.edit").'"><i class="fa fa-eye"></i></a>

                        <a class="btn btn-icon btn-sm btn-danger deleteDialog tip" data-toggle="modal" data-section="'.route("contactaccountmanager.delete", $item->id).'" role="button" data-original-title="'.trans("bases::tables.delete_entry").'" >
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
       $model = app(ContactaccountmanagerInterface::class)->getModel();
       /**
        * @var \Eloquent $model
        */
       $query = $model->orderBy('contactaccountmanager.created_at', 'desc')->select(['contactaccountmanager.id', 'contactaccountmanager.first_name', 'contactaccountmanager.last_name', 'contactaccountmanager.email', 'contactaccountmanager.company_name', 'contactaccountmanager.created_at']);
       return $this->applyScopes(apply_filters(BASE_FILTER_DATATABLES_QUERY, $query, $model, CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME));
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
                'name' => 'contactaccountmanager.id',
                'title' => trans('bases::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'first_name' => [
                'name' => 'contactaccountmanager.first_name',
                'title' => trans('contactaccountmanager::contactaccountmanager.tables.first_name'),
                'class' => 'text-left searchable',
                'width' => '150px',
            ],
            'last_name' => [
                'name' => 'contactaccountmanager.last_name',
                'title' => trans('contactaccountmanager::contactaccountmanager.tables.last_name'),
                'width' => '150px',
            ],
            'email' => [
                'name' => 'contactaccountmanager.email',
                'title' => trans('contactaccountmanager::contactaccountmanager.tables.email'),
                'width' => '150px',
            ],
            'company_name' => [
                'name' => 'contactaccountmanager.company_name',
                'title' => trans('contactaccountmanager::contactaccountmanager.tables.company_name'),
                'width' => '150px',
            ],
            'created_at' => [
                'name' => 'contactaccountmanager.created_at',
                'title' => trans('bases::tables.created_at'),
                'width' => '150px',
                'class' => 'searchable',
            ],
           
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
            //     'link' => route('contactaccountmanager.create'),
            //     'text' => view('bases::elements.tables.actions.create')->render(),
            // ],
        ];
        return apply_filters(BASE_FILTER_DATATABLES_BUTTONS, $buttons, CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME);
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
                'link' => route('contactaccountmanager.delete.many'),
                'text' => view('bases::elements.tables.actions.delete')->render(),
            ],
            // 'activate' => [
            //     'link' => route('contactaccountmanager.change.status', ['status' => 1]),
            //     'text' => view('bases::elements.tables.actions.activate')->render(),
            // ],
            // 'deactivate' => [
            //     'link' => route('contactaccountmanager.change.status', ['status' => 0]),
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
        return CONTACTACCOUNTMANAGER_MODULE_SCREEN_NAME;
    }

    public function getDefaultButtons()
    {
        return [];
    }
}
