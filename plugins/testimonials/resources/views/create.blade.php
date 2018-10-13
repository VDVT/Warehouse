@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => 'testimonials.create']) !!}
        @php do_action(BASE_ACTION_CREATE_CONTENT_NOTIFICATION, TESTIMONIALS_MODULE_SCREEN_NAME, request(), null) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', old('name'), ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group">
                            <label for="position" class="control-label">{{ trans('testimonials::testimonials.form.position') }}</label>
                            {!! Form::text('position', old('position'), ['class' => 'form-control', 'id' => 'position', 'placeholder' => trans('testimonials::testimonials.form.position_placeholder'), 'data-counter' => 120]) !!}
                        </div>
                        <div class="form-group @if ($errors->has('content')) has-error @endif">
                            <label for="content" class="control-label required">{{ trans('testimonials::testimonials.form.content') }}</label>
                            {!! Form::textarea('content', old('content'), ['class' => 'form-control', 'rows' => 4, 'id' => 'content', 'placeholder' => trans('testimonials::testimonials.form.content_placeholder'), 'data-counter' => 400]) !!}
                            {!! Form::error('content', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, TESTIMONIALS_MODULE_SCREEN_NAME, 'advanced') @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span>{{ trans('testimonials::testimonials.form.avatar') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', old('image')) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, TESTIMONIALS_MODULE_SCREEN_NAME, 'top') @endphp
                @php do_action(BASE_ACTION_META_BOXES, TESTIMONIALS_MODULE_SCREEN_NAME, 'side') @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
