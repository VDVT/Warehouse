@extends('bases::layouts.master')
@section('head')
    @parent
    <!-- <style>
        .editor-action-item, #mceu_0, #mceu_14, #mceu_15, #mceu_16, #mceu_17{display: none;}
    </style> -->
@endsection
@section('content')
    {!! Form::open(['route' => ['products.edit', $products->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, PRODUCTS_MODULE_SCREEN_NAME, request(), $products) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $products->name, ['class' => 'form-control', 'id' => 'name', 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('slug')) has-error @endif" style="display: none;">
                            {!! Form::permalink('slug', $products->slug, null, route('products.create.slug'), route('public.product.details', config('cms.slug.pattern')), url('/product/')) !!}
                            {!! Form::error('slug', $errors) !!}
                        </div>

                        <div class="form-group @if ($errors->has('description')) has-error @endif">
                            <label for="description" class="control-label required">{{ trans('bases::forms.description') }}</label>

                            {!! render_editor('description', $products->description, true) !!}
                            {!! Form::error('description', $errors) !!}
                        </div>

                        <div class="form-group @if ($errors->has('availability')) has-error @endif">
                            <label for="availability" class="control-label">{{ trans('products::products.forms.availability') }}</label>
                            {!! Form::text('availability', $products->availability, ['class' => 'form-control', 'id' => 'availability']) !!}
                            {!! Form::error('availability', $errors) !!}
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 @if ($errors->has('wholesale_price_a')) has-error @endif">
                                    <label for="wholesale_price_a" class="control-label">{{ trans('products::products.forms.wholesale_price_a') }}</label>
                                    {!! Form::text('wholesale_price_a', $products->wholesale_price_a, ['class' => 'form-control']) !!}
                                    {!! Form::error('wholesale_price_a', $errors) !!}
                                </div>
                                <div class="col-sm-6 @if ($errors->has('wholesale_price_b')) has-error @endif">
                                    <label for="wholesale_price_b" class="control-label">{{ trans('products::products.forms.wholesale_price_b') }}</label>
                                    {!! Form::text('wholesale_price_b', $products->wholesale_price_b, ['class' => 'form-control']) !!}
                                    {!! Form::error('wholesale_price_b', $errors) !!}
                                </div>
                                
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 @if ($errors->has('retail_price')) has-error @endif">
                                    <label for="retail_price" class="control-label">{{ trans('products::products.forms.retail_price') }}</label>
                                    {!! Form::text('retail_price', $products->retail_price, ['class' => 'form-control']) !!}
                                    {!! Form::error('retail_price', $errors) !!}
                                </div>
                                <div class="col-sm-6 @if ($errors->has('list_price')) has-error @endif">
                                    <label for="list_price" class="control-label">{{ trans('products::products.forms.list_price') }}</label>
                                    {!! Form::text('list_price', $products->list_price, ['class' => 'form-control']) !!}
                                    {!! Form::error('list_price', $errors) !!}
                                </div>
                                
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4 @if ($errors->has('weight')) has-error @endif">
                                    <label for="weight" class="control-label">{{ trans('products::products.forms.weight') }}</label>
                                    {!! Form::text('weight', $products->weight, ['class' => 'form-control']) !!}
                                    {!! Form::error('weight', $errors) !!}
                                </div>
                                <div class="col-sm-4 @if ($errors->has('size')) has-error @endif">
                                    <label for="size" class="control-label">{{ trans('products::products.forms.size') }}</label>
                                    {!! Form::text('size', $products->size, ['class' => 'form-control']) !!}
                                    {!! Form::error('size', $errors) !!}
                                </div>
                                <div class="col-sm-4 @if ($errors->has('condition')) has-error @endif">
                                    <label for="condition" class="control-label">{{ trans('products::products.forms.condition') }}</label>
                                    {!! Form::select('condition', config('products.condition'), $products->condition, ['class' => 'form-control']) !!}
                                    {!! Form::error('condition', $errors) !!}
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-4 @if ($errors->has('length')) has-error @endif">
                                    <label for="length" class="control-label">{{ trans('products::products.forms.length') }}</label>
                                    {!! Form::text('length', $products->length, ['class' => 'form-control']) !!}
                                    {!! Form::error('length', $errors) !!}
                                </div>
                                <div class="col-sm-4 @if ($errors->has('color')) has-error @endif">
                                    <label for="color" class="control-label">{{ trans('products::products.forms.color') }}</label>
                                    {!! Form::text('color', $products->color, ['class' => 'form-control']) !!}
                                    {!! Form::error('color', $errors) !!}
                                </div>
                                <div class="col-sm-4 @if ($errors->has('width')) has-error @endif">
                                    <label for="width" class="control-label">{{ trans('products::products.forms.width') }}</label>
                                    {!! Form::text('width', $products->width, ['class' => 'form-control']) !!}
                                    {!! Form::error('width', $errors) !!}
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 @if ($errors->has('thickness')) has-error @endif">
                                    <label for="thickness" class="control-label">{{ trans('products::products.forms.thickness') }}</label>
                                    {!! Form::text('thickness', $products->thickness, ['class' => 'form-control']) !!}
                                    {!! Form::error('thickness', $errors) !!}
                                </div>
                                <div class="col-sm-6 @if ($errors->has('height')) has-error @endif">
                                    <label for="height" class="control-label">{{ trans('products::products.forms.height') }}</label>
                                    {!! Form::text('height', $products->height, ['class' => 'form-control']) !!}
                                    {!! Form::error('height', $errors) !!}
                                </div>
                                
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 @if ($errors->has('face')) has-error @endif">
                                    <label for="face" class="control-label">{{ trans('products::products.forms.face') }}</label>
                                    {!! Form::text('face', $products->face, ['class' => 'form-control']) !!}
                                    {!! Form::error('face', $errors) !!}
                                </div>
                                <div class="col-sm-6 @if ($errors->has('capacity')) has-error @endif">
                                    <label for="capacity" class="control-label">{{ trans('products::products.forms.capacity') }}</label>
                                    {!! Form::text('capacity', $products->capacity, ['class' => 'form-control']) !!}
                                    {!! Form::error('capacity', $errors) !!}
                                </div>
                                
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 @if ($errors->has('depth')) has-error @endif">
                                    <label for="depth" class="control-label">{{ trans('products::products.forms.depth') }}</label>
                                    {!! Form::text('depth', $products->depth, ['class' => 'form-control']) !!}
                                    {!! Form::error('depth', $errors) !!}
                                </div>
                                <div class="col-sm-6 @if ($errors->has('connector')) has-error @endif">
                                    <label for="connector" class="control-label">{{ trans('products::products.forms.connector') }}</label>
                                    {!! Form::text('connector', $products->connector, ['class' => 'form-control']) !!}
                                    {!! Form::error('connector', $errors) !!}
                                </div>
                                
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 @if ($errors->has('step')) has-error @endif">
                                    <label for="step" class="control-label">{{ trans('products::products.forms.step') }}</label>
                                    {!! Form::text('step', $products->step, ['class' => 'form-control']) !!}
                                    {!! Form::error('step', $errors) !!}
                                </div>
                                <div class="col-sm-6 @if ($errors->has('baseplate')) has-error @endif">
                                    <label for="baseplate" class="control-label">{{ trans('products::products.forms.baseplate') }}</label>
                                    {!! Form::text('baseplate', $products->baseplate, ['class' => 'form-control']) !!}
                                    {!! Form::error('baseplate', $errors) !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, PRODUCTS_MODULE_SCREEN_NAME, 'advanced', $products) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $products->status])
                @include('products::product_categories.partials.categories-multi', [
                    'name' => 'categories[]',
                    'title' => trans('products::products.forms.categories'),
                    'value' => $selected_categories,
                    'categories' => $categories,
                    'object' => $products
                ])
                @php do_action(BASE_ACTION_META_BOXES, PRODUCTS_MODULE_SCREEN_NAME, 'top', $products) @endphp
                @php do_action(BASE_ACTION_META_BOXES, PRODUCTS_MODULE_SCREEN_NAME, 'side', $products) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
