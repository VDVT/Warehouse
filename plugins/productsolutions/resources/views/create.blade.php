@extends('bases::layouts.master')
@section('head')
    @parent
    <link rel="stylesheet" href="{{ asset('assets/css/jquery.auto-complete.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/cmstyle.css') }}">
    <style>
        .editor-action-item, #mceu_0, #mceu_13, #mceu_14, #mceu_15, #mceu_16, #mceu_17{display: none;}
    </style>
@endsection
@section('content')
    {!! Form::open(['route' => 'productsolutions.create']) !!}
        @php do_action(BASE_ACTION_CREATE_CONTENT_NOTIFICATION, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, request(), null) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('productsolutions::productsolutions.forms.name') }}</label>
                            {!! Form::text('name', old('name'), ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('productsolutions::productsolutions.forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('slug')) has-error @endif">
                            {!! Form::permalink('slug', old('slug'), null, route('productsolutions.create.slug'), route('public.product-solution.details', config('cms.slug.pattern')), url('/product-solution')) !!}
                            {!! Form::error('slug', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('slug')) has-error @endif">
                            {!! Form::permalink('slug', old('slug'), null, route('productsolutions.create.slug'), route('public.product-solution.details', config('cms.slug.pattern')), url('/')) !!}
                            {!! Form::error('slug', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('description')) has-error @endif">
                            <label for="description" class="control-label required">{{ trans('productsolutions::productsolutions.forms.description') }}</label>

                            {!! render_editor('description', old('description'), true) !!}
                            {!! Form::error('description', $errors) !!}
                        </div>
                        <div class="form-group group-attribute @if ($errors->has('performance')) has-error @endif">
                            <label for="performance" class="control-label required">{{ trans('productsolutions::productsolutions.forms.performance_attributes') }}</label>
                            <br>
                            <button type="button" class="btn btn-info btn-performance-attribute"><i class="fa fa-plus"></i> Add attribute</button>
                            <br>
                            @include('productsolutions::partials.attribute_item')
                            {!! Form::error('performance', $errors) !!}

                            <div class="attribute-item">
                                <div class="attr-item-left">
                                    <img class="performance-image-preview" src="{{ asset('/assets/images/no-image.svg') }}">
                                    <input type="hidden" class="performance_img" name="performance[0][image]" value="">
                                    <br>
                                    <button type="button" class="btn btn-warning btn-performance-image"><i class="fa fa-plus"></i> {{ trans('productsolutions::productsolutions.forms.add_image') }}</button>
                                    <a title="{{ trans('productsolutions::productsolutions.forms.remove_image') }}" class="btn-performance-remove-image" href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                </div>
                                <div class="attr-item-right">
                                    <textarea class="form-control" rows="5" placeholder="Description for product solution" name="performance[0][content]" cols="50"></textarea>
                                </div>
                                <div class="attr-item-drop">
                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="form-group @if ($errors->has('related_product')) has-error @endif">
                            <label for="related_product" class="control-label">{{ trans('productsolutions::productsolutions.forms.related_product') }}</label>
                            <input class="form-control product_name" type="text" placeholder="{{ trans('productsolutions::productsolutions.forms.choose_related') }}" style="margin-bottom: 15px;">
                            <div class="related_product_box autocomplete_product">
                                <ul id="autocomplete_list_related"></ul>
                            </div>
                            {!! Form::error('related_product', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, 'advanced') @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span>{{ trans('productsolutions::productsolutions.forms.order') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::number('order', old('order', 0), ['min' => 0, 'class' => 'form-control', 'id' => 'order']) !!}
                        {!! Form::error('order', $errors) !!}
                    </div>
                </div>
                @include('bases::elements.forms.status')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('productsolutions::productsolutions.forms.featured_image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', old('image')) !!}
                        {!! Form::error('image', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, 'top') @endphp
                @php do_action(BASE_ACTION_META_BOXES, PRODUCTSOLUTIONS_MODULE_SCREEN_NAME, 'side') @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop

@section('javascript')
    @parent
    <script src="{{ asset('assets/js/jquery.auto-complete.min.js') }}"></script>
    <script src="{{ asset('assets/js/Sortable.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
    <script src="{{ asset('assets/js/product-solution.js') }}"></script>
@endsection