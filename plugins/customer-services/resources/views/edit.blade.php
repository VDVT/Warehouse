@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['customer-services.edit', $customer-services->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, request(), $customer-services) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $customer-services->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, 'advanced', $customer-services) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $customer-services->status])
                @php do_action(BASE_ACTION_META_BOXES, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, 'top', $customer-services) @endphp
                @php do_action(BASE_ACTION_META_BOXES, CUSTOMER-SERVICES_MODULE_SCREEN_NAME, 'side', $customer-services) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
