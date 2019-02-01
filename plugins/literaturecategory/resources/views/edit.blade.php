@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['literaturecategory.edit', $literaturecategory->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, LITERATURECATEGORY_MODULE_SCREEN_NAME, request(), $literaturecategory) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $literaturecategory->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, LITERATURECATEGORY_MODULE_SCREEN_NAME, 'advanced', $literaturecategory) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $literaturecategory->status])
                @php do_action(BASE_ACTION_META_BOXES, LITERATURECATEGORY_MODULE_SCREEN_NAME, 'top', $literaturecategory) @endphp
                @php do_action(BASE_ACTION_META_BOXES, LITERATURECATEGORY_MODULE_SCREEN_NAME, 'side', $literaturecategory) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
