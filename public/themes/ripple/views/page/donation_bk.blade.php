<?php $source = Theme::asset()->url('images'); ?>
<div class="donation">
    <div class="block-1 d-flex align-items-center" style="background: url('{{ $source  }}/donation/rectangle-1.jpg')">
        <div class="overlight"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="title text-uppercase text-center">Donation Request Guidelines</h1>
                    <p class="description">The communities we serve are very important to us here at United Material Handling, INC. We are frequently asked to provide donations for community events. Because of the volume of requests, we have developed a few guidelines to ensure we are able to help as many organizations as possible</p>
                    <a href="#donation-form" class="btn btn-warning btn-effect text-uppercase">Donation Request Form</a>
                </div>
            </div>
        </div>
    </div>
    <div class="block-2">
        <div class="container">
            <div class="box-1">
                <div class="item item-1">
                    <img src="{{ $source }}/donation/1.png">
                    <h3 class="title text-uppercase">Filling our form</h3>
                    <span class="des">All donation requests must be submitted in writing by filling out our donation request form. We cannot accept requests via telephone.
(NOTE: Due to the number of requests we receive, we cannot guarantee that submitting a request will result in a donation.)</span>
                </div>
                <div class="item item-2">
                    <img src="{{ $source }}/donation/2.png">
                    <h3 class="title text-uppercase">non for profit</h3>
                    <span class="des">Organizations must be not-for- profit, including schools and churches, and be able to provide a tax exemption number or 501c3.</span>
                </div>
                <div class="item item-3">
                    <img src="{{ $source }}/donation/3.png">
                    <h3 class="title text-uppercase">30 days in advance</h3>
                    <span class="des">All requests must be received a minimum of 30 days in advance of the event date.</span>
                </div>
                <div class="item item-4">
                    <img src="{{ $source }}/donation/4.png">
                    <h3 class="title text-uppercase">ONE TIME PER YEAR</h3>
                    <span class="des">Each organization will be granted a maximum of one request per calendar year.</span>
                </div>
                <div class="item item-5">
                    <img src="{{ $source }}/donation/5.png">
                    <h3 class="title text-uppercase">money cannot be accepted</h3>
                    <span class="des">Requests for monetary donations cannot be accepted.</span>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="block-3 d-flex align-items-center" style="background: url('{{ $source  }}/donation/rectangle-11.jpg')">
        <div class="overlight"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <p class="description">If your request meets each of the guidelines above and is approved, we will contact you via email/phone number you’ve provided on the donation request form.</p>
                    <a href="#donation-form" class="btn btn-warning btn-effect text-uppercase">Donation Request Form</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container block-4" id="donation-form">
        <h3 class="title text-uppercase text-center">donation request form</h3>

        <div class="row">
            <div class="col"></div>
            <div class="col-md-8">
                <form class="" role="form" method="POST" action="{{ url('send-donation') }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('event_date') ? 'has-error' : '' }}">
                                <input name="event_date" value="{{ old('event_date') }}" type="text" class="form-control form-control-lg" placeholder="Event Date*" required="required">
                                @if ($errors->has('event_date'))
                                    <span class="help-block">{{ $errors->first('event_date') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('date_donation') ? 'has-error' : '' }}">
                                <input name="date_donation" value="{{ old('date_donation') }}" type="text" class="form-control form-control-lg" placeholder="Date Donation Needed By*" required="required">
                                @if ($errors->has('date_donation'))
                                    <span class="help-block">{{ $errors->first('date_donation') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('organize') ? 'has-error' : '' }}">
                                <input name="organize" value="{{ old('organize') }}" type="text" class="form-control form-control-lg" placeholder="Organize*" required="required">
                                @if ($errors->has('organize'))
                                    <span class="help-block">{{ $errors->first('organize') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('tax') ? 'has-error' : '' }}">
                                <input name="tax" value="{{ old('tax') }}" type="text" class="form-control form-control-lg" placeholder="Tax Exempt #/501c3*" required="required">
                                @if ($errors->has('tax'))
                                    <span class="help-block">{{ $errors->first('tax') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('organize_type') ? 'has-error' : '' }}">
                                <select name="organize_type" class="form-control organizetype form-control-lg" required="required">
                                    <option value="">Organize Type*</option>
                                    <?php foreach (config('donation.organize_type') as $key => $value) {
                                        echo '<option ';
                                            if (old('organize_type') == $key) echo 'selected="selected"';
                                        echo ' value="'.$key.'">'.$value.'</option>';
                                    } ?>
                                </select>
                                @if ($errors->has('organize_type'))
                                    <span class="help-block">{{ $errors->first('organize_type') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('organize_type_other') ? 'has-error' : '' }}">
                                <input name="organize_type_other" value="{{ old('organize_type_other') }}" type="text" class="form-control organizetypeother form-control-lg" placeholder="If Other, please specify" disabled="disabled">
                                @if ($errors->has('organize_type_other'))
                                    <span class="help-block">{{ $errors->first('organize_type_other') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('donation_address') ? 'has-error' : '' }}">
                                <input name="donation_address" value="{{ old('donation_address') }}" type="text" class="form-control form-control-lg" placeholder="Donation Address*" required="required">
                                @if ($errors->has('donation_address'))
                                    <span class="help-block">{{ $errors->first('donation_address') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('city') ? 'has-error' : '' }}">
                                <input name="city" value="{{ old('city') }}" type="text" class="form-control form-control-lg" placeholder="City*" required="required">
                                @if ($errors->has('city'))
                                    <span class="help-block">{{ $errors->first('city') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('state') ? 'has-error' : '' }}">
                                <select name="state" class="form-control form-control-lg" required="required">
                                    <option value="">State*</option>
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
                                <input name="zipcode" value="{{ old('zipcode') }}" type="text" class="form-control form-control-lg" placeholder="Zip code*" required="required">
                                @if ($errors->has('zipcode'))
                                    <span class="help-block">{{ $errors->first('zipcode') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('delivery_phone') ? 'has-error' : '' }}">
                                <input name="delivery_phone" value="{{ old('delivery_phone') }}" type="text" class="form-control form-control-lg" placeholder="Delivery Phone*" required="required">
                                @if ($errors->has('delivery_phone'))
                                    <span class="help-block">{{ $errors->first('delivery_phone') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('contact_name') ? 'has-error' : '' }}">
                                <input name="contact_name" value="{{ old('contact_name') }}" type="text" class="form-control form-control-lg" placeholder="Contact Name*" required="required">
                                @if ($errors->has('contact_name'))
                                    <span class="help-block">{{ $errors->first('contact_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('contact_phone') ? 'has-error' : '' }}">
                                <input name="contact_phone" value="{{ old('contact_phone') }}" type="text" class="form-control form-control-lg" placeholder="Contact Phone*" required="required">
                                @if ($errors->has('contact_phone'))
                                    <span class="help-block">{{ $errors->first('contact_phone') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('contact_email') ? 'has-error' : '' }}">
                                <input type="email" name="contact_email" value="{{ old('contact_email') }}" class="form-control form-control-lg" placeholder="Contact Email*" required="required">
                                @if ($errors->has('contact_email'))
                                    <span class="help-block">{{ $errors->first('contact_email') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('event_name') ? 'has-error' : '' }}">
                                <input name="event_name" value="{{ old('event_name') }}" type="text" class="form-control form-control-lg" placeholder="Event Name*" required="required">
                                @if ($errors->has('event_name'))
                                    <span class="help-block">{{ $errors->first('event_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group {{ $errors->has('number_of_attendeee') ? 'has-error' : '' }}">
                                <input name="number_of_attendeee" value="{{ old('number_of_attendeee') }}" type="text" class="form-control form-control-lg" placeholder="Expected number of event attendees*" required="required">
                                @if ($errors->has('number_of_attendeee'))
                                    <span class="help-block">{{ $errors->first('number_of_attendeee') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('event_location') ? 'has-error' : '' }}">
                                <input name="event_location" value="{{ old('event_location') }}" type="text" class="form-control form-control-lg" placeholder="Event Location*" required="required">
                                @if ($errors->has('event_location'))
                                    <span class="help-block">{{ $errors->first('event_location') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('salary_desired') ? 'has-error' : '' }}">
                                <input name="salary_desired" value="{{ old('salary_desired') }}" type="text" class="form-control form-control-lg" placeholder="Salary Desired*" required="required">
                                @if ($errors->has('salary_desired'))
                                    <span class="help-block">{{ $errors->first('salary_desired') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('event_description') ? 'has-error' : '' }}">
                                <textarea name="event_description" class="form-control form-control-lg" rows="7" placeholder="Event Description*
(Please be specific. Who benefits? What is the cause?)" required="required">{{ old('event_description') }}</textarea>
@if ($errors->has('event_description'))
                                    <span class="help-block">{{ $errors->first('event_description') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('donation_request') ? 'has-error' : '' }}">
                                <textarea name="donation_request" class="form-control form-control-lg" rows="7" placeholder="Donation(s) Requested*" required="required">{{ old('donation_request') }}</textarea>
                                @if ($errors->has('donation_request'))
                                    <span class="help-block">{{ $errors->first('donation_request') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('promoted') ? 'has-error' : '' }}">
                                <textarea name="promoted" class="form-control form-control-lg" rows="7" placeholder="How will United Material Handling, INC. be promoted at the event?*" required="required">{{ old('promoted') }}</textarea>
                                @if ($errors->has('promoted'))
                                    <span class="help-block">{{ $errors->first('promoted') }}</span>
                                @endif
                            </div>
                        </div>

                        <?php foreach (config('donation.opportunity') as $key => $value) { ?>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="op1 op">
                                        <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                        <div class="content-op d-flex align-items-center  justify-content-center">
                                            <span>{{ $value }}</span>
                                            <input name="opportunity[]" type="checkbox" value="{{ $key }}" class="op1 d-none">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>

                        <!-- <div class="col-md-4">
                            <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
                                <div class="op1 op">
                                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                    <div class="content-op d-flex align-items-center  justify-content-center">
                                        <span>Opportunity to have banner at event?</span>
                                        <input type="checkbox" value="" class="op1 d-none">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
                                <div class="op2 op">
                                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                    <div class="content-op d-flex align-items-center  justify-content-center">
                                        <span>Opportunity to have brochures at event?</span>
                                        <input type="checkbox" value="" class="op2 d-none">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
                                <div class="op3 op">
                                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                    <div class="content-op d-flex align-items-center  justify-content-center">
                                        <span>Opportunity to have staffed booth at the event?</span>
                                        <input type="checkbox" value="" class="op3 d-none">
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <div class="col-md-4">
                            <div class="form-group">
                                <div class="op4 op opx" data="4">
                                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                    <div class="content-op d-flex align-items-center justify-content-center">
                                        <span>Radio exposure?</span>
                                        <input name="is_radio" type="checkbox" value="1" class="op4 d-none">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group {{ $errors->has('radio_where') ? 'has-error' : '' }}">
                                <input name="radio_where" value="{{ old('radio_where') }}" type="text" name="op4" placeholder="Where?" class="inputop4 form-control form-control-lg" disabled="disabled">
                                @if ($errors->has('radio_where'))
                                    <span class="help-block">{{ $errors->first('radio_where') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
                                <div class="op5 op opx" data="5">
                                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                    <div class="content-op d-flex align-items-center  justify-content-center">
                                        <span>TV exposure?</span>
                                        <input name="is_tv" type="checkbox" value="1" class="op5 d-none">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group {{ $errors->has('tv_where') ? 'has-error' : '' }}">
                                <input name="tv_where" value="{{ old('tv_where') }}" type="text" name="op5" placeholder="Where?" class="inputop5 form-control form-control-lg" disabled="disabled">
                                @if ($errors->has('tv_where'))
                                    <span class="help-block">{{ $errors->first('tv_where') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
                                <div class="op6 op opx" data="6">
                                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                    <div class="content-op d-flex align-items-center  justify-content-center">
                                        <span>Print exposure?</span>
                                        <input name="is_print" type="checkbox" value="1" class="op6 d-none">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group {{ $errors->has('print_where') ? 'has-error' : '' }}">
                                <input name="print_where" value="{{ old('print_where') }}" type="text" name="op6" placeholder="Where?" class="inputop6 op6 form-control form-control-lg" disabled="disabled">
                                @if ($errors->has('print_where'))
                                    <span class="help-block">{{ $errors->first('print_where') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group {{ $errors->has('first_name') ? 'has-error' : '' }}">
                                <div class="op7 op opx" data="7">
                                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                    <div class="content-op d-flex align-items-center  justify-content-center">
                                        <span>Web Link &  Logo?</span>
                                        <input name="is_web" type="checkbox" value="1" class="op7 d-none">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group {{ $errors->has('web_where') ? 'has-error' : '' }}">
                                <input name="web_where" value="{{ old('web_where') }}" type="text" name="op7" placeholder="Where?" class="inputop7 form-control form-control-lg" disabled="disabled">
                                @if ($errors->has('web_where'))
                                    <span class="help-block">{{ $errors->first('web_where') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group {{ $errors->has('advertising') ? 'has-error' : '' }}">
                                <textarea name="advertising" class="form-control form-control-lg" rows="7" placeholder="If including United Material Handling, INC. logo in advertising, please include specs and email address to send art to:">{{ old('advertising') }}</textarea>
                                @if ($errors->has('advertising'))
                                    <span class="help-block">{{ $errors->first('advertising') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary">SUBMIT</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div>
</section>