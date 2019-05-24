@extends('bases::layouts.master')
@section('head')
    @parent
@endsection
@section('content')
        {!! Form::open() !!}
            @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, request(), $category) @endphp
            <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('tab_category_id')) has-error @endif">
                            <label for="tab_category_id" class="control-label">{{ trans('bases::forms.tab') }}</label>
                            {!! Form::select('tab_category_id', $tabs, $category->tab_category_id, ['class' => 'select-search-full', 'id' => 'tab_category_id']) !!}
                            {!! Form::error('tab_category_id', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $category->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group">
                            {!! Form::permalink('slug', $category->slug, $category->id, route('product_categories.create.slug'), route('public.product_category.details', config('cms.slug.pattern')), url('/product-category/')) !!}
                            {!! Form::error('slug', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('parent_id')) has-error @endif">
                            <label for="parent_id" class="control-label">{{ trans('bases::forms.parent') }}</label>
                            {!! Form::select('parent_id', $categories, $category->parent_id, ['class' => 'select-search-full', 'id' => 'parent_id']) !!}
                            {!! Form::error('parent_id', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('description')) has-error @endif">
                            <label for="description" class="control-label">{{ trans('bases::forms.description') }}</label>
                            {!! render_editor('description', $category->description, true) !!}
                            {!! Form::error('description', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, 'advanced', $category) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span>{{ trans('products::product_categories.order') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::number('order', $category->order, ['min' => 0, 'class' => 'form-control', 'id' => 'order']) !!}
                        {!! Form::error('order', $errors) !!}
                    </div>
                </div>
                @include('bases::elements.forms.status', ['selected' => $category->status])
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('products::product_categories.featured_image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', $category->image) !!}
                        {!! Form::error('image', $errors) !!}

                        {!! Form::mediaImage('image1', $category->image1) !!}
                        {!! Form::error('image1', $errors) !!}

                        {!! Form::mediaImage('image2', $category->image2) !!}
                        {!! Form::error('image2', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, 'top', $category) @endphp
                @php do_action(BASE_ACTION_META_BOXES, PRODUCT_CATEGORY_MODULE_SCREEN_NAME, 'side', $category) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
