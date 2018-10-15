@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['vendors.edit', $vendors->id]]) !!}
        <!-- @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, VENDORS_MODULE_SCREEN_NAME, request(), $vendors) @endphp -->
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('vendors::vendors.forms.vendor_name') }}</label>
                                    {!! Form::text('vendor_name', $vendors->vendor_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('vendors::vendors.forms.address') }}</label>
                                    {!! Form::text('address', $vendors->address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="current_title" class="control-label">{{ trans('vendors::vendors.forms.remittance_address') }}</label>
                            {!! Form::text('remittance_address', $vendors->remittance_address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                        </div>
                        <div class="form-group">
                            <label for="current_title" class="control-label">{{ trans('vendors::vendors.forms.contact_name') }}</label>
                            {!! Form::text('contact_name', $vendors->contact_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('vendors::vendors.forms.phone') }}</label>
                                    {!! Form::text('phone', $vendors->phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('vendors::vendors.forms.fax') }}</label>
                                    {!! Form::text('fax', $vendors->fax, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('vendors::vendors.forms.email') }}</label>
                                    {!! Form::text('email', $vendors->email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('vendors::vendors.forms.website') }}</label>
                                    {!! Form::text('website', $vendors->website, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>

                        <!-- <div class="form-group">
                            <label for="yourself" class="control-label">{{ trans('vendors::vendors.forms.address') }}</label>
                            {!! Form::textarea('yourself', $vendors->yourself, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 10, 'id' => 'yourself']) !!}
                        </div> -->
                        <div class="form-group">
                            <label for="cv" class="control-label">{{ trans('vendors::vendors.forms.attachment') }}</label>
                            <div>
                                <a target="_blank" href="{{ url('/uploads/' . $vendors->attachment) }}">
                                    <i class="fa fa-download"></i> 
                                    {{ str_replace('resume/', '', $vendors->attachment) }}
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, VENDORS_MODULE_SCREEN_NAME, 'advanced', $vendors) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                <!-- @include('bases::elements.form-actions') -->
                @include('bases::elements.forms.status', ['selected' => $vendors->status])
                <!-- @php do_action(BASE_ACTION_META_BOXES, VENDORS_MODULE_SCREEN_NAME, 'top', $vendors) @endphp -->
                <!-- @php do_action(BASE_ACTION_META_BOXES, VENDORS_MODULE_SCREEN_NAME, 'side', $vendors) @endphp -->
            </div>
        </div>
    {!! Form::close() !!}
@stop
