@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['customers.edit', $customers->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, CUSTOMERS_MODULE_SCREEN_NAME, request(), $customers) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $customers->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, CUSTOMERS_MODULE_SCREEN_NAME, 'advanced', $customers) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $customers->status])
                @php do_action(BASE_ACTION_META_BOXES, CUSTOMERS_MODULE_SCREEN_NAME, 'top', $customers) @endphp
                @php do_action(BASE_ACTION_META_BOXES, CUSTOMERS_MODULE_SCREEN_NAME, 'side', $customers) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
