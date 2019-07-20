@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['customers.edit', $customers->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, CUSTOMERS_MODULE_SCREEN_NAME, request(), $customers) @endphp
        <div class="row">
            <div class="col-md-12">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.company_name') }}</label>
                                    {!! Form::text('company_name', $customers->company_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.do_business') }}</label>
                                    {!! Form::text('do_business', $customers->do_business, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.founded_year') }}</label>
                                    {!! Form::text('founded_year', $customers->founded_year, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.phone') }}</label>
                                    {!! Form::text('phone', $customers->phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.fax') }}</label>
                                    {!! Form::text('fax', $customers->fax, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.email') }}</label>
                                    {!! Form::text('email', $customers->email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.contact_name') }}</label>
                                    {!! Form::text('contact_name', $customers->contact_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.title') }}</label>
                                    {!! Form::text('title', $customers->title, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.contact_phone') }}</label>
                                    {!! Form::text('contact_phone', $customers->contact_phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.contact_fax') }}</label>
                                    {!! Form::text('contact_fax', $customers->contact_fax, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.contact_email') }}</label>
                                    {!! Form::text('contact_email', $customers->contact_email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <!-- New Form -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.tax_number') }}</label>
                                    {!! Form::text('tax_number', $customers->tax_number, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.duns_number') }}</label>
                                    {!! Form::text('duns_number', $customers->duns_number, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.resale_numer') }}</label>
                                    {!! Form::text('resale_numer', $customers->resale_numer, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.address') }}</label>
                                    {!! Form::text('address', $customers->address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.city') }}</label>
                                    {!! Form::text('city', $customers->city, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.state') }}</label>
                                    {!! Form::text('state', $customers->state, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.zip') }}</label>
                                    {!! Form::text('zip', $customers->zip, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.phone_1') }}</label>
                                    {!! Form::text('phone_1', $customers->phone_1, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.fax_1') }}</label>
                                    {!! Form::text('fax_1', $customers->fax_1, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.email_1') }}</label>
                                    {!! Form::text('email_1', $customers->email_1, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.bank_name') }}</label>
                                    {!! Form::text('bank_name', $customers->bank_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.bank_address') }}</label>
                                    {!! Form::text('bank_address', $customers->bank_address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.phone_2') }}</label>
                                    {!! Form::text('phone_2', $customers->phone_2, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.fax_2') }}</label>
                                    {!! Form::text('fax_2', $customers->fax_2, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.email_2') }}</label>
                                    {!! Form::text('email_2', $customers->email_2, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>

                        <!-- New Form 3 -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_1_company_name') }}</label>
                                    {!! Form::text('trade_1_company_name', $customers->trade_1_company_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_1_account_type') }}</label>
                                    {!! Form::text('trade_1_account_type', $customers->trade_1_account_type, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_1_address') }}</label>
                                    {!! Form::text('trade_1_address', $customers->trade_1_address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_1_city') }}</label>
                                    {!! Form::text('trade_1_city', $customers->trade_1_city, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_1_state') }}</label>
                                    {!! Form::text('trade_1_state', $customers->trade_1_state, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_1_zip') }}</label>
                                    {!! Form::text('trade_1_zip', $customers->trade_1_zip, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_1_phone') }}</label>
                                    {!! Form::text('trade_1_phone', $customers->trade_1_phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_1_fax') }}</label>
                                    {!! Form::text('trade_1_fax', $customers->trade_1_fax, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_1_email') }}</label>
                                    {!! Form::text('trade_1_email', $customers->trade_1_email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_2_company_name') }}</label>
                                    {!! Form::text('trade_2_company_name', $customers->trade_2_company_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_2_account_type') }}</label>
                                    {!! Form::text('trade_2_account_type', $customers->trade_2_account_type, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_2_address') }}</label>
                                    {!! Form::text('trade_2_address', $customers->trade_2_address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_2_city') }}</label>
                                    {!! Form::text('trade_2_city', $customers->trade_2_city, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_2_state') }}</label>
                                    {!! Form::text('trade_2_state', $customers->trade_2_state, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_2_zip') }}</label>
                                    {!! Form::text('trade_2_zip', $customers->trade_2_zip, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_2_phone') }}</label>
                                    {!! Form::text('trade_2_phone', $customers->trade_2_phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_2_fax') }}</label>
                                    {!! Form::text('trade_2_fax', $customers->trade_2_fax, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_2_email') }}</label>
                                    {!! Form::text('trade_2_email', $customers->trade_2_email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_3_company_name') }}</label>
                                    {!! Form::text('trade_3_company_name', $customers->trade_3_company_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-6">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_3_account_type') }}</label>
                                    {!! Form::text('trade_3_account_type', $customers->trade_3_account_type, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_3_address') }}</label>
                                    {!! Form::text('trade_3_address', $customers->trade_3_address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_3_city') }}</label>
                                    {!! Form::text('trade_3_city', $customers->trade_3_city, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_3_state') }}</label>
                                    {!! Form::text('trade_3_state', $customers->trade_3_state, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_3_zip') }}</label>
                                    {!! Form::text('trade_3_zip', $customers->trade_3_zip, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="first_name" class="control-label">{{ trans('customers::customers.forms.trade_3_phone') }}</label>
                                    {!! Form::text('trade_3_phone', $customers->trade_3_phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_3_fax') }}</label>
                                    {!! Form::text('trade_3_fax', $customers->trade_3_fax, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                                <div class="col-sm-4">
                                    <label for="last_name" class="control-label">{{ trans('customers::customers.forms.trade_3_email') }}</label>
                                    {!! Form::text('trade_3_email', $customers->trade_3_email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label for="credit_amount" class="control-label">{{ trans('Requested Amount of Credit') }}</label>
                                    {!! Form::text('credit_amount', $customers->credit_amount, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                                </div>
                            </div>
                        </div>
                        @if($customers->attachment)
                        <div class="form-group">
                            <label for="cv" class="control-label">{{ trans('vendors::vendors.forms.attachment') }}</label>
                            <div>
                                <a target="_blank" href="{{ url('/uploads/' . $customers->attachment) }}">
                                    <i class="fa fa-download"></i> 
                                    {{ str_replace('resume/', '', $customers->attachment) }}
                                </a>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, CUSTOMERS_MODULE_SCREEN_NAME, 'advanced', $customers) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
