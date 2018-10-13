@extends('bases::layouts.master')
@section('head')
    @parent
    <style>
        .editor-action-item, #mceu_14, #mceu_16, #mceu_17{display: none;}
        .hint{margin-left:5px;color: #999;font-style: italic;}
        .content-image-box img {max-width: 100px;max-height: 100px;margin-bottom: 10px;display: none;}
        .content-image-box .btn-content-remove-image {color: #bf1a1a;cursor: pointer;font-size: 20px;line-height: 1;vertical-align: middle;margin-left: 5px;display: none;}
    </style>
@endsection
@section('content')
    {!! Form::open(['route' => 'coreexpertises.create']) !!}
        @php do_action(BASE_ACTION_CREATE_CONTENT_NOTIFICATION, COREEXPERTISES_MODULE_SCREEN_NAME, request(), null) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('coreexpertises::coreexpertises.forms.name') }}</label>
                            <span class="hint">{{ trans('coreexpertises::coreexpertises.forms.name_hint') }}</span>
                            {!! Form::text('name', old('name'), ['class' => 'form-control', 'id' => 'name', 'data-counter' => 120]) !!}
                        </div>
                        <div class="form-group @if ($errors->has('slug')) has-error @endif">
                            {!! Form::permalink('slug', old('slug'), null, route('coreexpertises.create.slug'), route('public.core-expertise.details', config('cms.slug.pattern')), url('/core-expertise')) !!}
                            {!! Form::error('slug', $errors) !!}
                        </div>
                        <div class="form-group">
                            <label for="content_image" class="control-label">{{ trans('coreexpertises::coreexpertises.forms.content_image') }}</label>
                            <div class="content-image-box">
                                <img class="content-image-preview" src="{{ asset('/assets/images/no-image.svg') }}">
                                <input type="hidden" class="content_image" name="content_image" value="">
                                <button type="button" class="btn btn-warning btn-content-image"><i class="fa fa-plus"></i> {{ trans('coreexpertises::coreexpertises.forms.add_image') }}</button>
                                <a title="{{ trans('coreexpertises::coreexpertises.forms.remove_image') }}" class="btn-content-remove-image" href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="form-group @if ($errors->has('content')) has-error @endif">
                            <label class="control-label required">{{ trans('coreexpertises::coreexpertises.forms.content') }}</label>
                            {!! render_editor('content', old('content'), true) !!}
                            {!! Form::error('content', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, COREEXPERTISES_MODULE_SCREEN_NAME, 'advanced') @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span>{{ trans('coreexpertises::coreexpertises.forms.order') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::number('order', old('order', 0), ['min' => 0, 'class' => 'form-control', 'id' => 'order']) !!}
                        {!! Form::error('order', $errors) !!}
                    </div>
                </div>
                @include('bases::elements.forms.status')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('coreexpertises::coreexpertises.forms.featured_image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', old('image')) !!}
                        {!! Form::error('image', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, COREEXPERTISES_MODULE_SCREEN_NAME, 'top') @endphp
                @php do_action(BASE_ACTION_META_BOXES, COREEXPERTISES_MODULE_SCREEN_NAME, 'side') @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
@section('javascript')
    @parent
    <script src="{{ asset('assets/js/core-expertise.js') }}"></script>
@endsection