@extends('bases::layouts.master')
@section('content')
    {!! Form::open() !!}
    @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, CONTACT_MODULE_SCREEN_NAME, request(), $contact) @endphp
    <div class="row">
        <div class="col-md-9">
            <div class="widget meta-boxes" style="margin-top: 0;">
                <div class="widget-title">
                    <h4>
                        <span>{{ trans('contact::contact.contact_information') }}</span>
                    </h4>
                </div>
                <div class="widget-body">
                    <?php $list_department = config('theme.department'); ?>
                    <p>{{ trans('contact::contact.tables.department') }}: {{ $list_department[$contact->department] }}</p>
                    <p>{{ trans('contact::contact.tables.fullname') }}: {{ $contact->name }}</p>
                    <p>{{ trans('contact::contact.tables.company_name') }}: {{ $contact->company_name }}</p>
                    <p>{{ trans('contact::contact.tables.email') }}: {{ $contact->email }}</p>
                    <p>{{ trans('contact::contact.tables.phone') }}: {{ $contact->phone }}</p>
                    <p>{{ trans('contact::contact.tables.content') }}: {{ $contact->content }}</p>
                </div>
            </div>
            @php do_action(BASE_ACTION_META_BOXES, CONTACT_MODULE_SCREEN_NAME, 'advanced', $contact) @endphp
        </div>
        
    </div>
    {!! Form::close() !!}
@stop
