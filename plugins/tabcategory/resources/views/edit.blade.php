@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['tabcategory.edit', $tabcategory->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, TABCATEGORY_MODULE_SCREEN_NAME, request(), $tabcategory) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('group_id')) has-error @endif">
                            <label for="group_id" class="control-label">{{ __('Product Group') }}</label>
                            {!! Form::select('group_id', $groups, $tabcategory->group_id, ['class' => 'select-search-full', 'id' => 'group_id']) !!}
                            {!! Form::error('group_id', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $tabcategory->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, TABCATEGORY_MODULE_SCREEN_NAME, 'advanced', $tabcategory) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $tabcategory->status])
                @php do_action(BASE_ACTION_META_BOXES, TABCATEGORY_MODULE_SCREEN_NAME, 'top', $tabcategory) @endphp
                @php do_action(BASE_ACTION_META_BOXES, TABCATEGORY_MODULE_SCREEN_NAME, 'side', $tabcategory) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
