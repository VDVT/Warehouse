@extends('theme::mail.layout')

@section('content')
<p style="font-size:12px; line-height:16px; margin:0 0 10px 0;">
    {{ setting('site_title') }} just received a Donation Request
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.event_date') }}: {{ $donation->event_date }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.date_donation') }}: {{ $donation->date_donation }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.company_name') }}: {{ $donation->organize }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.tax') }}: {{ $donation->tax }}
</p>
<?php if($donation->organize_type == 'other'){ ?>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.organize_type') }}: {{ $donation->organize_type_other }}
</p>
<?php }else{ ?>
<?php $organize_type = config('donation.organize_type'); ?>
    <p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
        - {{ trans('donation::donation.forms.organize_type') }}: {{ $organize_type[$donation->organize_type] }}
    </p>
<?php } ?>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.donation_address') }}: {{ $donation->donation_address }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.city') }}: {{ $donation->city }}
</p>
<?php
    $state_name = '';
    if(!empty($donation->state)){
        $state = \DB::table('states')->where('id', $donation->state)->first();
        $state_name = $state->name;
    }
?>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.state') }}: {{ $state_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.zipcode') }}: {{ $donation->zipcode }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.delivery_phone') }}: {{ $donation->delivery_phone }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.contact_name') }}: {{ $donation->contact_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.contact_phone') }}: {{ $donation->contact_phone }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.contact_email') }}: {{ $donation->contact_email }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.event_name') }}: {{ $donation->event_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.number_of_attendeee') }}: {{ $donation->number_of_attendeee }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.event_location') }}: {{ $donation->event_location }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.salary_desired') }}: {{ $donation->salary_desired }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.event_description') }}: {{ $donation->event_description }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.donation_request') }}: {{ $donation->donation_request }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.promoted') }}: {{ $donation->promoted }}
</p>

<?php 
    $list_str = [];
    if(!empty($donation->opportunity)){
        $list_str = json_decode($donation->opportunity);
    }
    foreach (config('donation.opportunity') as $key => $value) {
?>
    <p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
        - {{ $value }}: {{ in_array($key, $list_str) ? 'yes' : 'no' }}
    </p>
<?php } ?>

<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    <?php
        if($donation->is_radio){
            echo '- '.trans('donation::donation.forms.is_radio').': yes - ' . $donation->radio_where;
        }else{
            echo '- '.trans('donation::donation.forms.is_radio').': no';
        }
    ?>
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    <?php
        if($donation->is_tv){
            echo '- '.trans('donation::donation.forms.is_tv').': yes - ' . $donation->tv_where;
        }else{
            echo '- '.trans('donation::donation.forms.is_tv').': no';
        }
    ?>
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    <?php
        if($donation->is_print){
            echo '- '.trans('donation::donation.forms.is_print').': yes - ' . $donation->print_where;
        }else{
            echo '- '.trans('donation::donation.forms.is_print').': no';
        }
    ?>
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    <?php
        if($donation->is_web){
            echo '- '.trans('donation::donation.forms.is_web').': yes - ' . $donation->web_where;
        }else{
            echo '- '.trans('donation::donation.forms.is_web').': no';
        }
    ?>
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - {{ trans('donation::donation.forms.advertising') }}: {{ $donation->advertising }}
</p>
@endsection