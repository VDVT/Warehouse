@extends('bases::layouts.master')
@section('head')
    @parent
    <link rel="stylesheet" href="{{ asset('assets/css/jquery.auto-complete.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/cmstyle.css') }}">
    <style>
        .content-image-box img {max-width: 100px;max-height: 100px;margin-bottom: 10px;display: none;background: #ccc;padding: 10px;}
        .content-image-box .btn-content-remove-image {color: #bf1a1a;cursor: pointer;font-size: 20px;line-height: 1;vertical-align: middle;margin-left: 5px;display: none;}
    </style>
@endsection
@section('content')
    {!! Form::open(['route' => 'industrials.create']) !!}
        @php do_action(BASE_ACTION_CREATE_CONTENT_NOTIFICATION, INDUSTRIALS_MODULE_SCREEN_NAME, request(), null) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('industrials::industrials.forms.name') }}</label>
                            {!! Form::text('name', old('name'), ['class' => 'form-control', 'id' => 'name', 'data-counter'=>120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('slug')) has-error @endif">
                            {!! Form::permalink('slug', old('slug'), null, route('industrials.create.slug'), route('public.industrial.details', config('cms.slug.pattern')), url('/industrial')) !!}
                            {!! Form::error('slug', $errors) !!}
                        </div>
                        <div class="form-group">
                            <label for="icon" class="control-label">{{ trans('industrials::industrials.forms.icon') }}</label>
                            <div class="content-image-box">
                                <img class="content-image-preview" src="{{ asset('/assets/images/no-image.svg') }}">
                                <input type="hidden" class="icon" name="icon" value="">
                                <button type="button" class="btn btn-warning btn-content-image"><i class="fa fa-plus"></i> {{ trans('industrials::industrials.forms.add_image') }}</button>
                                <a title="{{ trans('industrials::industrials.forms.remove_image') }}" class="btn-content-remove-image" href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="form-group @if ($errors->has('content')) has-error @endif">
                            <label for="content" class="control-label required">{{ trans('industrials::industrials.forms.content') }}</label>
                            {!! Form::textarea('content', old('content'), ['class' => 'form-control', 'rows' => 5, 'id' => 'content', 'placeholder' => trans('industrials::industrials.forms.content_placeholder')]) !!}
                            {!! Form::error('content', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('testimonials_id')) has-error @endif">
                            <label for="testimonials_id" class="control-label required">{{ trans('industrials::industrials.forms.testimonial') }}</label>

                            {!! Form::select('testimonials_id', $testimonials, old('testimonials_id'), ['class' => 'form-control']) !!}

                            {!! Form::error('testimonials_id', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('key_solution')) has-error @endif">
                            <label for="key_solution" class="control-label required">{{ trans('industrials::industrials.forms.key_solution') }}</label>
                            
                            <input class="form-control key_autoComplete_field" type="text" placeholder="{{ trans('industrials::industrials.forms.choose_solution') }}" style="margin-bottom: 15px;">
                            <div class="key_autocomplete_box autocomplete_product">
                                <ul id="key_autocomplete_list_item"></ul>
                            </div>
                            {!! Form::error('key_solution', $errors) !!}
                        </div>


                        <div class="form-group @if ($errors->has('recent_project')) has-error @endif">
                            <label for="recent_project" class="control-label required">{{ trans('industrials::industrials.forms.recent_project') }}</label>
                            
                            <input class="form-control autoComplete_field" type="text" placeholder="{{ trans('industrials::industrials.forms.choose_project') }}" style="margin-bottom: 15px;">
                            <div class="autocomplete_box autocomplete_product">
                                <ul id="autocomplete_list_item"></ul>
                            </div>

                            {!! Form::error('recent_project', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, INDUSTRIALS_MODULE_SCREEN_NAME, 'advanced') @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span>{{ trans('industrials::industrials.forms.order') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::number('order', old('order', 0), ['min' => 0, 'class' => 'form-control', 'id' => 'order']) !!}
                        {!! Form::error('order', $errors) !!}
                    </div>
                </div>
                @include('bases::elements.forms.status')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('industrials::industrials.forms.featured_image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', old('image')) !!}
                        {!! Form::error('image', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, INDUSTRIALS_MODULE_SCREEN_NAME, 'top') @endphp
                @php do_action(BASE_ACTION_META_BOXES, INDUSTRIALS_MODULE_SCREEN_NAME, 'side') @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop

@section('javascript')
    @parent
    <script src="{{ asset('assets/js/jquery.auto-complete.min.js') }}"></script>
    <script src="{{ asset('assets/js/Sortable.js') }}"></script>
    <script src="{{ asset('assets/js/industrial.js') }}"></script>
@endsection