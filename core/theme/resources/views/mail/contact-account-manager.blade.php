@extends('theme::mail.layout')

@section('content')
<p style="font-size:12px; line-height:16px; margin:0 0 10px 0;">
    {{ setting('site_title') }} just received a contact account manager
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Title: {{ $contactaccountmanager->title }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - First name: {{ $contactaccountmanager->first_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Last name: {{ $contactaccountmanager->last_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Email: {{ $contactaccountmanager->email }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Zip code: {{ $contactaccountmanager->zipcode }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    <?php
        $find_us_other = explode('@@', theme_option('find_us_need_detail'));
        $find_us_other = array_values(array_filter(array_map('trim', $find_us_other), 'strlen'));
    ?>
    - How did you find us?: {{ $contactaccountmanager->find_us }}
    @if(in_array($contactaccountmanager->find_us, $find_us_other))
        ({{ $contactaccountmanager->find_us_other }})
    @endif
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Company Name: {{ $contactaccountmanager->company_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Phone Number: {{ $contactaccountmanager->phone }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Project Square Footage: {{ $contactaccountmanager->project_square_footage }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Project Description: {{ $contactaccountmanager->message }}
</p>
@endsection