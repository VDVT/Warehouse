<div class="donation" style="padding-bottom: 0">
    <div class="container block-4" id="donation-form"> 
        <div class="row">
            <div class="col"></div>
            <iframe src="https://analytics.clickdimensions.com/unitedmhcom-ahir7/pages/5r4q8inteeibwahg2pbiq.html" allowtransparency="true" width="100%" height="700px" type="text/html" frameborder="0" style="border:0"></iframe>            
        </div>
    </div>
  <br>
<br>
</section>

<!-- 
<div class="contact_acc_manager">
    <div class="container">
        <h3 class="title text-uppercase text-center">get a quote</h3>
        <div class="row">
            <div class="col"></div>
            <div class="col-md-8">
                @if (session('success_msg'))
                    <div class="alert alert-success">{{ session('success_msg') }}</div>
                @endif
                <form class="" role="form" method="POST" action="{{ url('send-contact-account-manager') }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
                                <input value="{{ old('title') }}" type="text" name="title" class="form-control form-control-lg" placeholder="Title">
                                @if ($errors->has('title'))
                                    <span class="help-block">{{ $errors->first('title') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
                                <input value="{{ old('first_name') }}" type="text" name="first_name" class="form-control form-control-lg first_name" placeholder="First Name *">
                                @if ($errors->has('first_name'))
                                    <span class="help-block">{{ $errors->first('first_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('last_name') ? 'has-error' : '' }}">
                                <input value="{{ old('last_name') }}" type="text" name="last_name" class="form-control form-control-lg last_name" placeholder="Last Name *">
                                @if ($errors->has('last_name'))
                                    <span class="help-block">{{ $errors->first('last_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                                <input value="{{ old('email') }}" type="text" name="email" class="form-control form-control-lg email" placeholder="Email *">
                                @if ($errors->has('email'))
                                    <span class="help-block">{{ $errors->first('email') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('zipcode') ? 'has-error' : '' }}">
                                <input value="{{ old('zipcode') }}" type="text" name="zipcode" class="form-control form-control-lg zipcode" placeholder="Zip code *">
                                @if ($errors->has('zipcode'))
                                    <span class="help-block">{{ $errors->first('zipcode') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">

                            <?php
                                $find_us = explode('@@', theme_option('find_us'));
                                $find_us = array_values(array_filter(array_map('trim', $find_us), 'strlen'));
                                $find_us_other = explode('@@', theme_option('find_us_need_detail'));
                                $find_us_other = array_values(array_filter(array_map('trim', $find_us_other), 'strlen'));
                            ?>

                            <div class="form-group {{ $errors->has('find_us') ? 'has-error' : '' }}">
                                <select name="find_us" class="form-control form-control-lg find_us" style="color: #868d96;">
                                    <option value="">How did you find us? *</option>
                                    <?php 
                                        $find_us_list = array_merge($find_us, $find_us_other);
                                        foreach ($find_us_list as $row) {
                                            echo '<option ';
                                                if (old('find_us') == $row) echo 'selected="selected"';
                                            echo ' value="'.$row.'">'.$row.'</option>';
                                        } 
                                    ?>
                                </select>
                                @if ($errors->has('find_us'))
                                    <span class="help-block">{{ $errors->first('find_us') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12 find_us_other_wrap" style="<?php if(in_array(old('find_us'), $find_us_other)) echo 'display:block;'; else echo 'display: none;' ?>">
                            <div class="form-group {{ $errors->has('find_us_other') ? 'has-error' : '' }}">
                                <input value="{{ old('find_us_other') }}" type="text" name="find_us_other" class="form-control form-control-lg find_us_other" placeholder="">
                                @if ($errors->has('find_us_other'))
                                    <span class="help-block">{{ $errors->first('find_us_other') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('company_name') ? 'has-error' : '' }}">
                                <input value="{{ old('company_name') }}" type="text" name="company_name" class="form-control form-control-lg company_name" placeholder="Company Name">
                                @if ($errors->has('company_name'))
                                    <span class="help-block">{{ $errors->first('company_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('phone') ? 'has-error' : '' }}">
                                <input value="{{ old('phone') }}" type="text" name="phone" class="form-control form-control-lg phone" placeholder="Phone Number">
                                @if ($errors->has('phone'))
                                    <span class="help-block">{{ $errors->first('phone') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('project_square_footage') ? 'has-error' : '' }}">
                                <input value="{{ old('project_square_footage') }}" type="text" name="project_square_footage" class="form-control form-control-lg project_square_footage" placeholder="Project Square Footage">
                                @if ($errors->has('project_square_footage'))
                                    <span class="help-block">{{ $errors->first('project_square_footage') }}</span>
                                @endif
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('message') ? 'has-error' : '' }}">
                                <textarea name="message" class="form-control form-control-lg message" rows="7" placeholder="Project Description">{{ old('message') }}</textarea>
                                @if ($errors->has('message'))
                                    <span class="help-block">{{ $errors->first('message') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" id="sendContactAccountManager" class="btn btn-warning btn-effect btn-lg btn-block text-uppercase">send</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div>
</section>
<script>
    jQuery(document).ready(function($) {
        $('.find_us').on('change', function(event) {
            event.preventDefault();
            const value = $(this).val();
            const list = <?php echo json_encode($find_us_other); ?>;
            if(list.indexOf(value) > -1){
                $('.find_us_other_wrap').show();
            }else{
                $('.find_us_other_wrap').hide();
            }
        });
    });
</script> -->