<?php $source = Theme::asset()->url('images'); ?>
<div class="bg_contact_us d-flex align-items-center" style="background: url('/themes/ripple/assets/images/about_us/about_us.jpg');">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="title text-uppercase text-center text-white">contact us</h3>
                <p class="desc text-white text-center">United Material Handling, Inc. Headquarters is located in Southern California.</p>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="media">
                                    <i class="fa fa-map-marker mr-3" aria-hidden="true"></i>
                                    <div class="media-body">
                                        <address>
                                            {{ theme_option('name') }}<br>
                                            {{ theme_option('address') }}
                                        </address>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="media">
                                    <i class="fa fa-phone mr-3" aria-hidden="true"></i>
                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0">Phone</h5>
                                        <p class="desc phone-number">{{ theme_option('phone') }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="media">
                                    <i class="fa fa-fax mr-3" aria-hidden="true"></i>
                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0">Fax</h5>
                                        <p class="desc">{{ theme_option('fax') }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="block_contact">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.1732985409562!2d-117.25447904907922!3d33.8594244352188!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dca6b3060a8efb%3A0x13e38cf6b9d044c8!2sUnited+Material+Handling%2C+Inc.!5e0!3m2!1sen!2sus!4v1514908726466" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    <div class="container">
        <div class="row">
            <!-- <div class="col"></div> -->
            <div class="col-md-5 offset-md-7">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-uppercase text-white">send us a message</h3>
                        @if (session('success_msg'))
                            <div class="alert alert-success">{{ session('success_msg') }}</div>
                        @endif
                        <form role="form" method="POST" action="{{ url('send-contact-us') }}">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="form-group {{ $errors->has('department') ? 'has-error' : '' }}">
                                        <select id="department" name="department" class="form-control combobox" id="exampleFormControlSelect1" style="color: #ffff;">
                                            <option value="">Please Select Department</option>
                                            <?php
                                                foreach (config('theme.department') as $key => $value) {
                                                    echo '<option style="color:#030a108c" value="'.$key.'">'.$value.'</option>';
                                                }
                                            ?>
                                        </select>
                                    </div>
                                    @if ($errors->has('department'))
                                        <span class="help-block">{{ $errors->first('department') }}</span>
                                    @endif
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }} x1">
                                        <label class="label-control"><span class="label-text">Your Name *</span></label>
                                        <input name="name" type="text" class="form-control c1">
                                    </div>
                                    @if ($errors->has('name'))
                                        <span class="help-block">{{ $errors->first('name') }}</span>
                                    @endif
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group {{ $errors->has('company_name') ? 'has-error' : '' }} x1">
                                        <label class="label-control"><span class="label-text">Company Name *</span></label>
                                        <input name="company_name" type="text" class="form-control c1">
                                    </div>
                                    @if ($errors->has('company_name'))
                                        <span class="help-block">{{ $errors->first('company_name') }}</span>
                                    @endif
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }} x1">
                                        <label class="label-control"><span class="label-text">Email *</span></label>
                                        <input name="email" type="text" class="form-control c1">
                                    </div>
                                    @if ($errors->has('email'))
                                        <span class="help-block">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group {{ $errors->has('phone') ? 'has-error' : '' }} x1">
                                        <label class="label-control"><span class="label-text">Phone Number *</span></label>
                                        <input name="phone" type="text" class="form-control c1">
                                    </div>
                                    @if ($errors->has('phone'))
                                        <span class="help-block">{{ $errors->first('phone') }}</span>
                                    @endif
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group {{ $errors->has('content') ? 'has-error' : '' }} x1">
                                        <textarea name="content" class="form-control c2" rows="5" placeholder="Message"></textarea>
                                    </div>
                                    @if ($errors->has('content'))
                                        <span class="help-block">{{ $errors->first('content') }}</span>
                                    @endif
                                </div>
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-light">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>

<script type="text/javascript">
    window.onload = function() {
        $('.form-group .form-control').on('focus blur', function (e) {
            $(this).parents('.form-group').toggleClass('active', (e.type === 'focus' || this.value.length > 0));
        }).trigger('blur');
    };
</script>