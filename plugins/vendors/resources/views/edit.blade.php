@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['vendors.edit', $vendors->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, VENDORS_MODULE_SCREEN_NAME, request(), $vendors) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $vendors->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, VENDORS_MODULE_SCREEN_NAME, 'advanced', $vendors) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $vendors->status])
                @php do_action(BASE_ACTION_META_BOXES, VENDORS_MODULE_SCREEN_NAME, 'top', $vendors) @endphp
                @php do_action(BASE_ACTION_META_BOXES, VENDORS_MODULE_SCREEN_NAME, 'side', $vendors) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
