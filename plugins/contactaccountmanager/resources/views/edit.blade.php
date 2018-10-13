@extends('bases::layouts.master')
@section('content')    
    <div class="row">
        <div class="col-md-9">
            <div class="main-form">
                <div class="form-body">
                    <div class="form-group">
                        <label for="title" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.title') }}</label>
                        {!! Form::text('title', $contactaccountmanager->title, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-6">
                                <label for="first_name" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.first_name') }}</label>
                                {!! Form::text('first_name', $contactaccountmanager->first_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                            </div>
                            <div class="col-sm-6">
                                <label for="last_name" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.last_name') }}</label>
                                {!! Form::text('last_name', $contactaccountmanager->last_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.email') }}</label>
                        {!! Form::text('email', $contactaccountmanager->email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="form-group">
                        <label for="phone" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.phone') }}</label>
                        {!! Form::text('phone', $contactaccountmanager->phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="form-group">
                        <label for="company_name" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.company_name') }}</label>
                        {!! Form::text('company_name', $contactaccountmanager->company_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="form-group">
                        <label for="address" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.address') }}</label>
                        {!! Form::text('address', $contactaccountmanager->address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="city" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.city') }}</label>
                                {!! Form::text('city', $contactaccountmanager->city, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                            </div>
                            <div class="col-sm-4">
                                <label for="state" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.state') }}</label>
                                {!! Form::select('state', $states, $contactaccountmanager->state, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                            </div>
                            <div class="col-sm-4">
                                <label for="zipcode" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.zipcode') }}</label>
                                {!! Form::text('zipcode', $contactaccountmanager->zipcode, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="message" class="control-label">{{ trans('contactaccountmanager::contactaccountmanager.forms.message') }}</label>
                        {!! Form::textarea('message', $contactaccountmanager->message, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 10, 'id' => 'message']) !!}
                    </div>
                </div>
            </div>
            
        </div>
    </div>
@stop
