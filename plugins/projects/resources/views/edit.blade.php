@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['projects.edit', $projects->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, PROJECTS_MODULE_SCREEN_NAME, request(), $projects) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('projects::projects.forms.name') }}</label>
                            {!! Form::text('name', $projects->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('projects::projects.forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('slug')) has-error @endif">
                            {!! Form::permalink('slug', $projects->slug, null, route('projects.create.slug'), route('public.project.details', config('cms.slug.pattern')), url('/project/')) !!}
                            {!! Form::error('slug', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('description')) has-error @endif">
                            <label for="description" class="control-label required">{{ trans('projects::projects.forms.description') }}</label>
                            {!! Form::textarea('description', $projects->description, ['class' => 'form-control', 'rows' => 4, 'id' => 'description', 'placeholder' => trans('projects::projects.forms.description_placeholder'), 'data-counter' => 250]) !!}
                            {!! Form::error('description', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('content')) has-error @endif">
                            <label class="control-label required">{{ trans('projects::projects.forms.content') }}</label>
                            <a class="btn_gallery" data-mode="attach" data-result="content" data-action="image_post"
                               data-backdrop="static" data-keyboard="false" data-toggle="modal"
                               data-target=".media_modal">{{ trans('media::media.add') }}</a>
                            {!! render_editor('content', $projects->content, true) !!}
                            {!! Form::error('content', $errors) !!}
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, PROJECTS_MODULE_SCREEN_NAME, 'advanced', $projects) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $projects->status])
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span>{{ trans('projects::projects.forms.project_info') }}</span></h4>
                    </div>
                    <div class="widget-body">

                        <div class="form-group @if ($errors->has('category')) has-error @endif">
                            <label for="category" class="control-label">{{ trans('projects::projects.forms.category') }}</label>
                            {!! Form::text('category', $projects->category, ['class' => 'form-control', 'id' => 'category']) !!}
                            {!! Form::error('category', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('client')) has-error @endif">
                            <label for="client" class="control-label">{{ trans('projects::projects.forms.client') }}</label>
                            {!! Form::text('client', $projects->client, ['class' => 'form-control', 'id' => 'client']) !!}
                            {!! Form::error('client', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('date')) has-error @endif">
                            <label for="date" class="control-label">{{ trans('projects::projects.forms.date') }}</label>
                            {!! Form::text('date', $projects->date, ['class' => 'form-control datepicker', 'id' => 'date']) !!}
                            {!! Form::error('date', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('link')) has-error @endif">
                            <label for="link" class="control-label">{{ trans('projects::projects.forms.link') }}</label>
                            {!! Form::text('link', $projects->link, ['class' => 'form-control', 'id' => 'link']) !!}
                            {!! Form::error('link', $errors) !!}
                        </div>

                    </div>
                </div>
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('projects::projects.forms.featured_image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', $projects->image) !!}
                        {!! Form::error('image', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, PROJECTS_MODULE_SCREEN_NAME, 'top', $projects) @endphp
                @php do_action(BASE_ACTION_META_BOXES, PROJECTS_MODULE_SCREEN_NAME, 'side', $projects) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
@section('javascript')
    @parent
    <script>
        $(document).ready(function($) {
            $('.datepicker').datepicker();
        });
    </script>
@endsection
