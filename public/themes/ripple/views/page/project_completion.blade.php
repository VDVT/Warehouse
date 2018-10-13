<?php $source = Theme::asset()->url('images'); ?>
<div class="donation" style="padding-bottom: 0">
    <div class="container block-4" id="donation-form">
        <h3 class="title text-uppercase text-center">Project Completion</h3>
        <div class="row">
            <div class="col"></div>
            <div class="col-md-8">
                @if (session('success_msg'))
                    <div class="alert alert-success">{!! session('success_msg') !!}</div>
                @endif
                <form class="" role="form" method="POST" action="{{ route('public.page.sendProjectCompletion') }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
                                <input name="name" value="{{ old('name') }}" type="text" class="form-control form-control-lg" placeholder="Your Name*" >
                                @if ($errors->has('name'))
                                    <span class="help-block">{{ $errors->first('name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('foreman') ? 'has-error' : '' }}">
                                <input name="foreman" value="{{ old('foreman') }}" type="text" class="form-control form-control-lg" placeholder="Foreman*" >
                                @if ($errors->has('foreman'))
                                    <span class="help-block">{{ $errors->first('foreman') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('date') ? 'has-error' : '' }}">
                                <input name="date" value="{{ old('date') }}" type="text" id="date" autocomplete="off" class="form-control form-control-lg" placeholder="Date*" >
                                @if ($errors->has('date'))
                                    <span class="help-block">{{ $errors->first('date') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('job_number') ? 'has-error' : '' }}">
                                <input name="job_number" value="{{ old('job_number') }}" type="text" class="form-control form-control-lg" placeholder="Job Number*" >
                                @if ($errors->has('job_number'))
                                    <span class="help-block">{{ $errors->first('job_number') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('company_name') ? 'has-error' : '' }}">
                                <input name="company_name" value="{{ old('company_name') }}" type="text" class="form-control form-control-lg" placeholder="Company Name*" >
                                @if ($errors->has('company_name'))
                                    <span class="help-block">{{ $errors->first('company_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('address') ? 'has-error' : '' }}">
                                <input name="address" value="{{ old('address') }}" type="text" class="form-control form-control-lg" placeholder="Address*" >
                                @if ($errors->has('address'))
                                    <span class="help-block">{{ $errors->first('address') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('work') ? 'has-error' : '' }}">
                                <textarea name="work" class="form-control form-control-lg" rows="4" placeholder="Description of Work*" >{{ old('work') }}</textarea>
                                @if ($errors->has('work'))
                                    <span class="help-block">{{ $errors->first('work') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('comment') ? 'has-error' : '' }}">
                                <textarea name="comment" class="form-control form-control-lg" rows="4" placeholder="Comments*" >{{ old('comment') }}</textarea>
                                @if ($errors->has('comment'))
                                    <span class="help-block">{{ $errors->first('comment') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary">SEND</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col"></div>
        </div>
    </div>
  <br>
<br>
</section>