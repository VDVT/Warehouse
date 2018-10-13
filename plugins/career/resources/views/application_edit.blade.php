@extends('bases::layouts.master')
@section('content')
    
    <div class="main-form">
        <div class="form-body">

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="first_name" class="control-label">{{ trans('career::applicationform.forms.first_name') }}</label>
                        {!! Form::text('first_name', $application->first_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-6">
                        <label for="last_name" class="control-label">{{ trans('career::applicationform.forms.last_name') }}</label>
                        {!! Form::text('last_name', $application->last_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="email" class="control-label">{{ trans('career::applicationform.forms.email') }}</label>
                        {!! Form::text('email', $application->email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-6">
                        <label for="phone" class="control-label">{{ trans('career::applicationform.forms.phone') }}</label>
                        {!! Form::text('phone', $application->phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="current_title" class="control-label">{{ trans('career::applicationform.forms.current_title') }}</label>
                {!! Form::text('current_title', $application->current_title, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>
            <div class="form-group">
                <label for="current_company" class="control-label">{{ trans('career::applicationform.forms.current_company') }}</label>
                {!! Form::text('current_company', $application->current_company, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>
            <div class="form-group">
                <label for="position_desired" class="control-label">{{ trans('career::applicationform.forms.position_desired') }}</label>
                {!! Form::text('position_desired', $application->position_desired, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>
            <div class="form-group">
                <label for="salary_desired" class="control-label">{{ trans('career::applicationform.forms.salary_desired') }}</label>
                {!! Form::text('salary_desired', $application->salary_desired, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-4">
                        <label for="city" class="control-label">{{ trans('career::applicationform.forms.city') }}</label>
                        {!! Form::text('city', $application->city, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-4">
                        <label for="state" class="control-label">{{ trans('career::applicationform.forms.state') }}</label>
                        {!! Form::select('state', $states, $application->state, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-4">
                        <label for="zipcode" class="control-label">{{ trans('career::applicationform.forms.zipcode') }}</label>
                        {!! Form::text('zipcode', $application->zipcode, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="find_us" class="control-label">{{ trans('career::applicationform.forms.find_us') }}</label>
                <div class="row">
                    <?php $find_us = json_decode($application->find_us); ?>
                    <div class="col-md-4">
                        <div class="form-check check1">
                            <input <?php if( in_array('linkedin', $find_us) ) echo 'checked'; ?> class="form-check-input" disabled type="checkbox" name="find_us[]" value="linkedin" id="linkedin">
                            <label class="form-check-label" for="linkedin">
                                LinkedIn
                            </label>
                        </div>
                        <div class="form-check check1">
                            <input <?php if( in_array('indeed', $find_us) ) echo 'checked'; ?> class="form-check-input" disabled type="checkbox" name="find_us[]" value="indeed" id="indeed">
                            <label class="form-check-label" for="indeed">
                                Indeed.com
                            </label>
                        </div>
                        <div class="form-check check1">
                            <input <?php if( in_array('simplyhired', $find_us) ) echo 'checked'; ?> class="form-check-input" disabled type="checkbox" name="find_us[]" value="simplyhired" id="simplyhired">
                            <label class="form-check-label" for="simplyhired">
                                SimplyHired.com
                            </label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-check check1">
                            <input <?php if( in_array('careerbulider', $find_us) ) echo 'checked'; ?> class="form-check-input" disabled type="checkbox" name="find_us[]" value="careerbuilder" id="careerbulider">
                            <label class="form-check-label" for="careerbulider">
                                CareerBuilder.com
                            </label>
                        </div>
                        <div class="form-check check1">
                            <input <?php if( in_array('ziprecruiter', $find_us) ) echo 'checked'; ?> class="form-check-input" disabled type="checkbox" name="find_us[]" value="ziprecruiter" id="ziprecruiter">
                            <label class="form-check-label" for="ziprecruiter">
                                Zip-recruiter
                            </label>
                        </div>
                        <div class="form-check check1">
                            <input <?php if( in_array('facebook', $find_us) ) echo 'checked'; ?> class="form-check-input" disabled type="checkbox" name="find_us[]" value="facebook" id="facebook">
                            <label class="form-check-label" for="facebook">
                                Facebook
                            </label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-check check1">
                            <input <?php if( in_array('other', $find_us) ) echo 'checked'; ?> class="form-check-input" disabled type="checkbox" name="find_us[]" value="other" id="other">
                            <label class="form-check-label" for="other">
                                Orther
                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="contact_me" class="control-label">{{ trans('career::applicationform.forms.contact_me') }}</label>
                <?php $contact_me = json_decode($application->contact_me); ?>
                <div class="row">
                <?php foreach ($careers as $key => $career) { ?>
                    <div class="col-md-4">
                        <div class="form-check check1">
                            <input disabled <?php if( !empty($contact_me) && in_array($career->id, $contact_me) ) echo 'checked'; ?> class="form-check-input" type="checkbox" name="contact_me[]" value="{{ $career->id }}" id="contact-me-{{ $career->id }}">
                            <label class="form-check-label" for="contact-me-{{ $career->id }}">{{ $career->name }}</label>
                        </div>
                    </div>
                <?php } ?>
                </div>
            </div>

            <div class="form-group">
                <label for="cv" class="control-label">{{ trans('career::applicationform.forms.cv') }}</label>
                <div>
                    <a target="_blank" href="{{ url('/uploads/' . $application->cv) }}">
                        <i class="fa fa-download"></i> 
                        {{ str_replace('resume/', '', $application->cv) }}
                    </a>
                </div>
            </div>

            <div class="form-group">
                <label for="yourself" class="control-label">{{ trans('career::applicationform.forms.yourself') }}</label>
                {!! Form::textarea('yourself', $application->yourself, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 10, 'id' => 'yourself']) !!}
            </div>

        </div>
    </div>
        
@stop
