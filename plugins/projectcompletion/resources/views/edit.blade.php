@extends('bases::layouts.master')
@section('content')
    
    <div class="main-form">
        <div class="form-body">

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="name" class="control-label">{{ trans('projectcompletion::projectcompletion.forms.name') }}</label>
                        {!! Form::text('name', $projectcompletion->name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-6">
                        <label for="foreman" class="control-label">{{ trans('projectcompletion::projectcompletion.forms.foreman') }}</label>
                        {!! Form::text('foreman', $projectcompletion->foreman, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="date" class="control-label">{{ trans('projectcompletion::projectcompletion.forms.date') }}</label>
                        {!! Form::text('date', $projectcompletion->date, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-6">
                        <label for="job_number" class="control-label">{{ trans('projectcompletion::projectcompletion.forms.job_number') }}</label>
                        {!! Form::text('job_number', $projectcompletion->job_number, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="company_name" class="control-label">{{ trans('projectcompletion::projectcompletion.forms.company_name') }}</label>
                {!! Form::text('company_name', $projectcompletion->company_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>

            <div class="form-group">
                <label for="address" class="control-label">{{ trans('projectcompletion::projectcompletion.forms.address') }}</label>
                {!! Form::text('address', $projectcompletion->address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>
            
            <div class="form-group">
                <label for="work" class="control-label">{{ trans('projectcompletion::projectcompletion.forms.work') }}</label>
                {!! Form::textarea('work', $projectcompletion->work, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 6, 'id' => 'work']) !!}
            </div>

            <div class="form-group">
                <label for="comment" class="control-label">{{ trans('projectcompletion::projectcompletion.forms.comment') }}</label>
                {!! Form::textarea('comment', $projectcompletion->comment, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 6, 'id' => 'comment']) !!}
            </div>
        </div>
    </div>
        
@stop
