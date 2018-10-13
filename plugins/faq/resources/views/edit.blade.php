@extends('bases::layouts.master')
@section('head')
    @parent
    <style>
        .editor-action-item, #mceu_14, #mceu_15, #mceu_16, #mceu_17{display: none;}
    </style>
@endsection
@section('content')
    {!! Form::open(['route' => ['faq.edit', $faq->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, FAQ_MODULE_SCREEN_NAME, request(), $faq) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $faq->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('content')) has-error @endif">
                            <label class="control-label required">{{ trans('faq::faq.forms.content') }}</label>
                            {!! render_editor('content', $faq->content, true) !!}
                            {!! Form::error('content', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, FAQ_MODULE_SCREEN_NAME, 'advanced', $faq) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span>{{ trans('faq::faq.forms.order') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::number('order', $faq->order, ['min' => 0, 'class' => 'form-control', 'id' => 'order']) !!}
                        {!! Form::error('order', $errors) !!}
                    </div>
                </div>
                @include('bases::elements.forms.status', ['selected' => $faq->status])
                @php do_action(BASE_ACTION_META_BOXES, FAQ_MODULE_SCREEN_NAME, 'top', $faq) @endphp
                @php do_action(BASE_ACTION_META_BOXES, FAQ_MODULE_SCREEN_NAME, 'side', $faq) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
