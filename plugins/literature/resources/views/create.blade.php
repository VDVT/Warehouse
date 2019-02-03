@extends('bases::layouts.master')
@section('head')
    @parent
    <link rel="stylesheet" href="{{ asset('assets/css/cmstyle.css') }}">
@endsection
@section('content')
    {!! Form::open(['route' => 'literature.create']) !!}
        @php do_action(BASE_ACTION_CREATE_CONTENT_NOTIFICATION, LITERATURE_MODULE_SCREEN_NAME, request(), null) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('tab_category_id')) has-error @endif">
                            <label for="tab_category_id" class="control-label">{{ trans('bases::forms.tab') }}</label>
                            {!! Form::select('tab_category_id', $tabs, old('tab_category_id'), ['class' => 'select-search-full', 'id' => 'tab_category_id']) !!}
                            {!! Form::error('tab_category_id', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('literature::literature.forms.name') }}</label>
                            {!! Form::text('name', old('name'), ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('literature::literature.forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('description')) has-error @endif">
                            <label for="description" class="control-label required">{{ trans('literature::literature.forms.description') }}</label>
                            {!! Form::textarea('description', old('description'), ['class' => 'form-control', 'rows' => 5, 'id' => 'description', 'placeholder' => trans('literature::literature.forms.description_placeholder'), 'data-counter' => 500]) !!}
                            {!! Form::error('description', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('file')) has-error @endif">
                            <label for="file" class="control-label required">{{ trans('literature::literature.forms.file') }}</label>
                            <br>
                            <input type="hidden" name="file_id" value="{{ old('file_id') }}">
                            <input type="hidden" name="file_name" value="{{ old('file_name') }}">
                            <input type="hidden" name="file" value="{{ old('file') }}">
                            <span class="document-name-preview">
                                <?php
                                    $file_name = old('file_name');
                                    if(!empty($file_name)){
                                        echo '<span><i class="fa fa-file-archive-o" aria-hidden="true"></i> '.$file_name.'</span>';
                                    }
                                ?>
                            </span>
                            <button type="button" class="btn btn-warning btn-add-document"><i class="fa fa-plus"></i> {{ trans('literature::literature.forms.add_document') }}</button>
                            {!! Form::error('file', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, LITERATURE_MODULE_SCREEN_NAME, 'advanced') @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status')
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('literature::literature.forms.featured_image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', old('image')) !!}
                        {!! Form::error('image', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, LITERATURE_MODULE_SCREEN_NAME, 'top') @endphp
                @php do_action(BASE_ACTION_META_BOXES, LITERATURE_MODULE_SCREEN_NAME, 'side') @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
@section('javascript')
    @parent
    <script src="{{ asset('assets/js/literature.js') }}"></script>
@endsection
