@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['career.edit', $career->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, CAREER_MODULE_SCREEN_NAME, request(), $career) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $career->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, CAREER_MODULE_SCREEN_NAME, 'advanced', $career) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span>{{ trans('career::career.forms.order') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::number('order', $career->order, ['min' => 0, 'class' => 'form-control', 'id' => 'order']) !!}
                        {!! Form::error('order', $errors) !!}
                    </div>
                </div>
                @include('bases::elements.forms.status', ['selected' => $career->status])
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('career::career.forms.featured_image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', $career->image) !!}
                        {!! Form::error('image', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, CAREER_MODULE_SCREEN_NAME, 'top', $career) @endphp
                @php do_action(BASE_ACTION_META_BOXES, CAREER_MODULE_SCREEN_NAME, 'side', $career) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
