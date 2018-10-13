@extends('bases::layouts.master')
@section('content')
    {!! Form::open(['route' => ['newsletter.edit', $newsletter->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, NEWSLETTER_MODULE_SCREEN_NAME, request(), $newsletter) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group">
                            <label for="name" class="control-label">{{ trans('newsletter::newsletter.forms.name') }}</label>
                            {!! Form::text('name', $newsletter->name, ['class' => 'form-control', 'id' => 'name', 'data-counter' => 120]) !!}
                        </div>
                        <div class="form-group @if ($errors->has('email')) has-error @endif">
                            <label for="email" class="control-label required">{{ trans('newsletter::newsletter.forms.email') }}</label>
                            {!! Form::text('email', $newsletter->email, ['class' => 'form-control', 'id' => 'email', 'data-counter' => 120]) !!}
                            {!! Form::error('email', $errors) !!}
                        </div>

                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, NEWSLETTER_MODULE_SCREEN_NAME, 'advanced', $newsletter) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @php do_action(BASE_ACTION_META_BOXES, NEWSLETTER_MODULE_SCREEN_NAME, 'top', $newsletter) @endphp
                @php do_action(BASE_ACTION_META_BOXES, NEWSLETTER_MODULE_SCREEN_NAME, 'side', $newsletter) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop
