@extends('bases::layouts.master')
@section('head')
    @parent
    <style>
        #name_ifr{height: 100px!important}
        .editor-action-item{display: none;}
    </style>
@endsection
@section('content')
    {!! Form::open(['route' => ['banner.edit', $banner->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, BANNER_MODULE_SCREEN_NAME, request(), $banner) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">

                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label">{{ trans('banner::banner.forms.name') }}</label>
                           
                            {!! render_editor('name', $banner->name, true) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('link')) has-error @endif">
                            <label for="link" class="control-label">{{ trans('banner::banner.forms.link') }}</label>
                            {!! Form::text('link', $banner->link, ['class' => 'form-control', 'id' => 'link', 'data-counter' => 150]) !!}
                            {!! Form::error('link', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('button_text')) has-error @endif">
                            <label for="button_text" class="control-label">{{ trans('banner::banner.forms.button_text') }}</label>
                            {!! Form::text('button_text', $banner->button_text, ['class' => 'form-control', 'id' => 'button_text', 'data-counter' => 50]) !!}
                            {!! Form::error('button_text', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('order')) has-error @endif">
                            <label for="order" class="control-label">{{ trans('banner::banner.forms.order') }}</label>
                            {!! Form::number('order', $banner->order, ['min' => 0, 'class' => 'form-control', 'id' => 'order']) !!}
                            {!! Form::error('order', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, BANNER_MODULE_SCREEN_NAME, 'advanced', $banner) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $banner->status])
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('banner::banner.forms.image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', $banner->image) !!}
                        {!! Form::error('image', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, BANNER_MODULE_SCREEN_NAME, 'top', $banner) @endphp
                @php do_action(BASE_ACTION_META_BOXES, BANNER_MODULE_SCREEN_NAME, 'side', $banner) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
