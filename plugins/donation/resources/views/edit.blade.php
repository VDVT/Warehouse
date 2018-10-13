@extends('bases::layouts.master')
@section('content')
    
    <div class="main-form">
        <div class="form-body">

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="event_date" class="control-label">{{ trans('donation::donation.forms.event_date') }}</label>
                        {!! Form::text('event_date', $donation->event_date, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-6">
                        <label for="date_donation" class="control-label">{{ trans('donation::donation.forms.date_donation') }}</label>
                        {!! Form::text('date_donation', $donation->date_donation, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="organize" class="control-label">{{ trans('donation::donation.forms.company_name') }}</label>
                        {!! Form::text('organize', $donation->organize, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-6">
                        <label for="tax" class="control-label">{{ trans('donation::donation.forms.tax') }}</label>
                        {!! Form::text('tax', $donation->tax, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <?php 
                    if($donation->organize_type == 'other'){
                        $organize_type = $donation->organize_type_other;
                    }else{
                        $organize_type_arr = config('donation.organize_type');
                        $organize_type = $organize_type_arr[$donation->organize_type];
                    }
                ?>
                <label for="organize_type" class="control-label">{{ trans('donation::donation.forms.organize_type') }}</label>
                {!! Form::text('organize_type', $organize_type, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>


            <div class="form-group">
                <label for="donation_address" class="control-label">{{ trans('donation::donation.forms.donation_address') }}</label>
                {!! Form::text('donation_address', $donation->donation_address, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-4">
                        <label for="city" class="control-label">{{ trans('donation::donation.forms.city') }}</label>
                        {!! Form::text('city', $donation->city, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-4">
                        <label for="state" class="control-label">{{ trans('donation::donation.forms.state') }}</label>
                        {!! Form::select('state', $states, $donation->state, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-4">
                        <label for="zipcode" class="control-label">{{ trans('donation::donation.forms.zipcode') }}</label>
                        {!! Form::text('zipcode', $donation->zipcode, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="delivery_phone" class="control-label">{{ trans('donation::donation.forms.delivery_phone') }}</label>
                {!! Form::text('delivery_phone', $donation->delivery_phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="contact_name" class="control-label">{{ trans('donation::donation.forms.contact_name') }}</label>
                        {!! Form::text('contact_name', $donation->contact_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-6">
                        <label for="contact_phone" class="control-label">{{ trans('donation::donation.forms.contact_phone') }}</label>
                        {!! Form::text('contact_phone', $donation->contact_phone, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="contact_email" class="control-label">{{ trans('donation::donation.forms.contact_email') }}</label>
                {!! Form::text('contact_email', $donation->contact_email, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="event_name" class="control-label">{{ trans('donation::donation.forms.event_name') }}</label>
                        {!! Form::text('event_name', $donation->event_name, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-6">
                        <label for="number_of_attendeee" class="control-label">{{ trans('donation::donation.forms.number_of_attendeee') }}</label>
                        {!! Form::text('number_of_attendeee', $donation->number_of_attendeee, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="event_location" class="control-label">{{ trans('donation::donation.forms.event_location') }}</label>
                {!! Form::text('event_location', $donation->event_location, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>

            <div class="form-group">
                <label for="salary_desired" class="control-label">{{ trans('donation::donation.forms.salary_desired') }}</label>
                {!! Form::text('salary_desired', $donation->salary_desired, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
            </div>

            <div class="form-group">
                <label for="event_description" class="control-label">{{ trans('donation::donation.forms.event_description') }}</label>
                {!! Form::textarea('event_description', $donation->event_description, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 10, 'id' => 'event_description']) !!}
            </div>

            <div class="form-group">
                <label for="donation_request" class="control-label">{{ trans('donation::donation.forms.donation_request') }}</label>
                {!! Form::textarea('donation_request', $donation->donation_request, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 10, 'id' => 'donation_request']) !!}
            </div>

            <div class="form-group">
                <label for="promoted" class="control-label">{{ trans('donation::donation.forms.promoted') }}</label>
                {!! Form::textarea('promoted', $donation->promoted, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 10, 'id' => 'promoted']) !!}
            </div>

            <div class="form-group">
                <div class="row">
                    <?php 
                        $list_str = [];
                        if(!empty($donation->opportunity)){
                            $list_str = json_decode($donation->opportunity);
                        }
                        foreach (config('donation.opportunity') as $key => $value) {
                            $accept = in_array($key, $list_str) ? 'yes' : 'no';
                    ?>
                    <div class="col-sm-4">
                        <label for="city" class="control-label">{{ $value }}</label>
                        {!! Form::text('opportunity[]', $accept, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <?php } ?>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <div class="col-sm-3">
                        <?php if($donation->is_radio){
                            $radio = 'yes - ' . $donation->radio_where;
                        }else{
                            $radio = 'no';
                        } ?>
                        <label for="is_radio" class="control-label">{{ trans('donation::donation.forms.is_radio') }}</label>
                        {!! Form::text('is_radio', $radio, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-3">
                        <?php if($donation->is_tv){
                            $tv = 'yes - ' . $donation->tv_where;
                        }else{
                            $tv = 'no';
                        } ?>
                        <label for="is_tv" class="control-label">{{ trans('donation::donation.forms.is_tv') }}</label>
                        {!! Form::text('is_tv', $tv, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-3">
                        <?php if($donation->is_print){
                            $print = 'yes - ' . $donation->print_where;
                        }else{
                            $print = 'no';
                        } ?>
                        <label for="is_print" class="control-label">{{ trans('donation::donation.forms.is_print') }}</label>
                        {!! Form::text('is_print', $print, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                    <div class="col-sm-3">
                        <?php if($donation->is_web){
                            $web = 'yes - ' . $donation->web_where;
                        }else{
                            $web = 'no';
                        } ?>
                        <label for="is_web" class="control-label">{{ trans('donation::donation.forms.is_web') }}</label>
                        {!! Form::text('is_web', $web, ['class' => 'form-control', 'disabled'=>'disabled']) !!}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="advertising" class="control-label">{{ trans('donation::donation.forms.advertising') }}</label>
                {!! Form::textarea('advertising', $donation->advertising, ['class' => 'form-control', 'disabled'=>'disabled', 'rows' => 10, 'id' => 'advertising']) !!}
            </div>

        </div>
    </div>
        
@stop
