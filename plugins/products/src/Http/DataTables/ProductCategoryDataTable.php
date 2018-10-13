<?php

namespace Botble\Products\Http\DataTables;

use Botble\Base\Http\DataTables\DataTableAbstract;
use Botble\Products\Repositories\Interfaces\ProductCategoryInterface;

class ProductCategoryDataTable extends DataTableAbstract
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
                return anchor_link(route('product_categories.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('cms.date_format.date'));
            })
            ->editColumn('updated_at', function ($item) {
                return date_from_database($item->updated_at, 'd-m-Y');
            })
            ->editColumn('status', function ($item) {
                return table_status($item->status);
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, PRODUCT_CATEGORY_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                return view('products::product_categories.partials.actions', compact('item'))->render();
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
        $model =app(ProductCategoryInterface::class)->getModel();
        /**
         * @var \Eloquent $model
         */
        $query = $model->orderBy('product_categories.parent_id', 'asc')
            ->orderBy('product_categories.order', 'asc')
            ->select(['product_categories.id', 'product_categories.name', 'product_categories.status', 'product_categories.order', 'product_categories.created_at', 'product_categories.parent_id']);
        return $this->applyScopes(apply_filters(BASE_FILTER_DATATABLES_QUERY, $query, $model, PRODUCT_CATEGORY_MODULE_SCREEN_NAME));
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
                'name' => 'product_categories.id',
                'title' => trans('bases::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'name' => [
                'name' => 'product_categories.name',
                'title' => trans('bases::tables.name'),
                'class' => 'searchable',
            ],
            'created_at' => [
                'name' => 'product_categories.created_at',
                'title' => trans('bases::tables.created_at'),
                'class' => 'searchable',
                'width' => '100px',
            ],
            'updated_at' => [
                'name' => 'product_categories.updated_at',
                'title' => trans('bases::tables.updated_at'),
                'width' => '100px',
            ],
            'status' => [
                'name' => 'product_categories.status',
                'title' => trans('bases::tables.status'),
                'width' => '100px',
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
            'create' => [
                'link' => route('product_categories.create'),
                'text' => view('bases::elements.tables.actions.create')->render(),
            ],
        ];
        return apply_filters(BASE_FILTER_DATATABLES_BUTTONS, $buttons, PRODUCT_CATEGORY_MODULE_SCREEN_NAME);
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
                'link' => route('product_categories.delete.many'),
                'text' => view('bases::elements.tables.actions.delete')->render(),
            ],
            'activate' => [
                'link' => route('product_categories.change.status', ['status' => 1]),
                'text' => view('bases::elements.tables.actions.activate')->render(),
            ],
            'deactivate' => [
                'link' => route('product_categories.change.status', ['status' => 0]),
                'text' => view('bases::elements.tables.actions.deactivate')->render(),
            ]
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
        return PRODUCT_CATEGORY_MODULE_SCREEN_NAME;
    }
}
