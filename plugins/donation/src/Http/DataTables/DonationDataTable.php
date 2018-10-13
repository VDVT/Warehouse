<?php

namespace Botble\Donation\Http\DataTables;

use Botble\Base\Http\DataTables\DataTableAbstract;
use Botble\Donation\Repositories\Interfaces\DonationInterface;

class DonationDataTable extends DataTableAbstract
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
            ->editColumn('organize', function ($item) {
                return anchor_link(route('donation.edit', $item->id), $item->organize);
            })
            ->editColumn('checkbox', function ($item) {
                return table_checkbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return date_from_database($item->created_at, config('cms.date_format.date'));
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, DONATION_MODULE_SCREEN_NAME)
            ->addColumn('operations', function ($item) {
                // return table_actions('donation.edit', 'donation.delete', $item);
                return '
                    <div class="table-actions">
                        <a href="'.route("donation.edit", $item->id).'" class="btn btn-icon btn-sm btn-primary tip" data-original-title="'.trans("donation::donation.view").'"><i class="fa fa-eye"></i></a>

                        <a class="btn btn-icon btn-sm btn-danger deleteDialog tip" data-toggle="modal" data-section="'.route("donation.delete", $item->id).'" role="button" data-original-title="'.trans("bases::tables.delete_entry").'" >
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
       $model = app(DonationInterface::class)->getModel();
       /**
        * @var \Eloquent $model
        */
       $query = $model->select(['donation.id', 'donation.organize', 'donation.created_at', 'donation.event_date', 'donation.date_donation']);
       return $this->applyScopes(apply_filters(BASE_FILTER_DATATABLES_QUERY, $query, $model, DONATION_MODULE_SCREEN_NAME));
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
                'name' => 'donation.id',
                'title' => trans('bases::tables.id'),
                'width' => '20px',
                'class' => 'searchable searchable_id',
            ],
            'organize' => [
                'name' => 'donation.organize',
                'title' => trans('donation::donation.forms.company_name'),
                'class' => 'text-left searchable',
            ],
            'event_date' => [
                'name' => 'donation.event_date',
                'title' => trans('donation::donation.forms.event_date'),
                'width' => '100px',
            ],
             'date_donation' => [
                'name' => 'donation.date_donation',
                'title' => trans('donation::donation.forms.date_donation'),
                'width' => '100px',
            ],
            'created_at' => [
                'name' => 'donation.created_at',
                'title' => trans('bases::tables.created_at'),
                'width' => '100px',
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
            //     'link' => route('donation.create'),
            //     'text' => view('bases::elements.tables.actions.create')->render(),
            // ],
        ];
        return apply_filters(BASE_FILTER_DATATABLES_BUTTONS, $buttons, DONATION_MODULE_SCREEN_NAME);
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
                'link' => route('donation.delete.many'),
                'text' => view('bases::elements.tables.actions.delete')->render(),
            ],
            // 'activate' => [
            //     'link' => route('donation.change.status', ['status' => 1]),
            //     'text' => view('bases::elements.tables.actions.activate')->render(),
            // ],
            // 'deactivate' => [
            //     'link' => route('donation.change.status', ['status' => 0]),
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
        return DONATION_MODULE_SCREEN_NAME;
    }
}
