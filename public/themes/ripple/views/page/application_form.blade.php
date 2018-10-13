<?php $source = Theme::asset()->url('images'); ?>
<div class="contact_acc_manager">
    <div class="container">
        <h3 class="title text-uppercase text-center">application form</h3>
        <div class="row">
            <div class="col"></div>
            <div class="col-md-8">
                @if (session('success_msg'))
                    <div class="alert alert-success">{{ session('success_msg') }}</div>
                @endif
                <form action="{{ url('application-send') }}" enctype="multipart/form-data" method="POST">
                {!! Form::open(['url' => ['application-send'], 'files' => true, 'method'=>'post' ]) !!}
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
                                <input type="text" name="first_name" value="{{ old('first_name') }}" class="form-control form-control-lg" placeholder="First Name">
                                @if ($errors->has('first_name'))
                                    <span class="help-block">{{ $errors->first('first_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('last_name') ? 'has-error' : '' }}">
                                <input type="text" name="last_name" value="{{ old('last_name') }}" class="form-control form-control-lg" placeholder="Last Name">
                                @if ($errors->has('last_name'))
                                    <span class="help-block">{{ $errors->first('last_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                                <input type="email" name="email" value="{{ old('email') }}" class="form-control form-control-lg" placeholder="Email">
                                @if ($errors->has('email'))
                                    <span class="help-block">{{ $errors->first('email') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('phone') ? 'has-error' : '' }}">
                                <input type="text" name="phone" value="{{ old('phone') }}" class="form-control form-control-lg" placeholder="Phone">
                                @if ($errors->has('phone'))
                                    <span class="help-block">{{ $errors->first('phone') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('current_title') ? 'has-error' : '' }}">
                                <input type="text" name="current_title" value="{{ old('current_title') }}" class="form-control form-control-lg" placeholder="Current Title">
                                @if ($errors->has('current_title'))
                                    <span class="help-block">{{ $errors->first('current_title') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('current_company') ? 'has-error' : '' }}">
                                <input type="text" name="current_company" value="{{ old('current_company') }}" class="form-control form-control-lg" placeholder="Current Company">
                                @if ($errors->has('current_company'))
                                    <span class="help-block">{{ $errors->first('current_company') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('position_desired') ? 'has-error' : '' }}">
                                <input type="text" name="position_desired" value="{{ old('position_desired') }}" class="form-control form-control-lg" placeholder="Position Desired">
                                @if ($errors->has('position_desired'))
                                    <span class="help-block">{{ $errors->first('position_desired') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('salary_desired') ? 'has-error' : '' }}">
                                <input type="text" name="salary_desired" value="{{ old('salary_desired') }}" class="form-control form-control-lg" placeholder="Salary Desired">
                                @if ($errors->has('salary_desired'))
                                    <span class="help-block">{{ $errors->first('salary_desired') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('city') ? 'has-error' : '' }}">
                                <input type="text" name="city" value="{{ old('city') }}" class="form-control form-control-lg" placeholder="City">
                                @if ($errors->has('city'))
                                    <span class="help-block">{{ $errors->first('city') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('state') ? 'has-error' : '' }}">
                                <select name="state" class="form-control form-control-lg">
                                    <option value="">State</option>
                                    <?php foreach ($states as $id => $state) {
                                        echo '<option ';
                                            if (old('state') == $id) echo 'selected="selected"';
                                        echo ' value="'.$id.'">'.$state.'</option>';
                                    } ?>
                                </select>
                                @if ($errors->has('state'))
                                    <span class="help-block">{{ $errors->first('state') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('zipcode') ? 'has-error' : '' }}">
                                <input type="text" name="zipcode" value="{{ old('zipcode') }}" class="form-control form-control-lg" placeholder="Zip code">
                                @if ($errors->has('zipcode'))
                                    <span class="help-block">{{ $errors->first('zipcode') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h3 class="title1">How did you find us?</h3>
                        </div>
                        <div class="col-md-12">
                            @if ($errors->has('find_us'))
                                <span class="help-block" style="color: #a94442;font-size: 14px;">{{ $errors->first('find_us') }}</span>
                            @endif
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="find_us[]" value="linkedin" id="linkedin">
                                        <label class="form-check-label" for="linkedin">
                                            <i class="fa fa-linkedin" aria-hidden="true"></i>
                                            LinkedIn
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="find_us[]" value="indeed" id="indeed">
                                        <label class="form-check-label" for="indeed">
                                            <img src="{{ $source }}/applicationform/rectangle.png" alt="indeed" class="icon">
                                            Indeed.com
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="find_us[]" value="simplyhired" id="simplyhired">
                                        <label class="form-check-label" for="simplyhired">
                                            <img src="{{ $source }}/applicationform/simplyhired.png" alt="simplyhired" class="icon">
                                            SimplyHired.com
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="find_us[]" value="careerbuilder" id="careerbulider">
                                        <label class="form-check-label" for="careerbulider">
                                            <img src="{{ $source }}/applicationform/careerbulider.png" alt="careerbuilder" class="icon">
                                            CareerBuilder.com
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="find_us[]" value="ziprecruiter" id="ziprecruiter">
                                        <label class="form-check-label" for="ziprecruiter">
                                            <img src="{{ $source }}/applicationform/ziprecruiter.png" alt="ziprecruiter" class="icon">
                                            Zip-recruiter
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="find_us[]" value="facebook" id="facebook">
                                        <label class="form-check-label" for="facebook">
                                            <i class="fa fa-facebook" aria-hidden="true"></i>
                                            Facebook
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="find_us[]" value="other" id="other">
                                        <label class="form-check-label" for="other">
                                            Other
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h3 class="title1">Contact me about jobs:</h3>
                        </div>
                        <div class="col-md-12">
                            @if ($errors->has('contact_me'))
                                <span class="help-block" style="color: #a94442;font-size: 14px;">{{ $errors->first('contact_me') }}</span>
                            @endif
                            <div class="row">
                                <?php foreach ($careers as $key => $career) { ?>
                                    <div class="col-md-4">
                                        <div class="form-check check1">
                                            <input <?php if( !empty(old('contact_me')) && in_array($career->id, old('contact_me')) ) echo 'checked'; ?> class="form-check-input" type="checkbox" name="contact_me[]" value="{{ $career->id }}" id="contact-me-{{ $career->id }}">
                                            <label class="form-check-label" for="contact-me-{{ $career->id }}">{{ $career->name }}</label>
                                        </div>
                                    </div>
                                <?php } ?>
                                <!-- <div class="col-md-4">
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Accounting and Finance
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Administrative
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Engineering
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            General Labor
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Human Resources
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Information Technology
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Logistics
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Sale
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Maketing
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Technical Design
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Project Management
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Quality Assurance
                                        </label>
                                    </div>
                                    <div class="form-check check1">
                                        <input class="form-check-input" type="checkbox" name="contact_me[]" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Safety
                                        </label>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group d-flex align-items-center {{ $errors->has('cv') ? 'has-error' : '' }}">
                                <label for="exampleFormControlFile1" class="mb-0">Upload Resume</label>
                                <input name="cv" type="file" class="form-control-file">
                                @if ($errors->has('cv'))
                                    <span class="help-block">{{ $errors->first('cv') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('yourself') ? 'has-error' : '' }}">
                                <textarea name="yourself" class="form-control form-control-lg" rows="7" placeholder="Details about yourself and any additional skills">{{ old('yourself') }}</textarea>
                                @if ($errors->has('yourself'))
                                    <span class="help-block">{{ $errors->first('yourself') }}</span>
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
</div>
</section>