@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['groupproductcategory.edit', $groupproductcategory->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, request(), $groupproductcategory) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $groupproductcategory->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, 'advanced', $groupproductcategory) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $groupproductcategory->status])
                @php do_action(BASE_ACTION_META_BOXES, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, 'top', $groupproductcategory) @endphp
                @php do_action(BASE_ACTION_META_BOXES, GROUPPRODUCTCATEGORY_MODULE_SCREEN_NAME, 'side', $groupproductcategory) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
