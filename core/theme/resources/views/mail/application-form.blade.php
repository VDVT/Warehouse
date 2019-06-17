@extends('theme::mail.layout')

@section('content')
<p style="font-size:12px; line-height:16px; margin:0 0 10px 0;">
    {{ setting('site_title') }} just received a application submission from UMH Wholesale Website
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - First name: {{ $application->first_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Last name: {{ $application->last_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Email: {{ $application->email }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Phone: {{ $application->phone }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Current Title: {{ $application->current_title }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Current Company: {{ $application->current_company }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Position Desired: {{ $application->position_desired }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Salary Desired: {{ $application->salary_desired }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - City: {{ $application->city }}
</p>
<?php
	$state_name = '';
	if(!empty($application->state)){
		$state = \DB::table('states')->where('id', $application->state)->first();
		$state_name = $state->name;
	}
?>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - State: {{ $state_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Zip code: {{ $application->zipcode }}
</p>
<?php
    $find_us = '';
    if(!empty($application->find_us)){
        $find_us_arr = [];
        $list_str = json_decode($application->find_us);
        foreach ($list_str as $k => $str) {
            $find_us_arr[] = config('application.find_us')[$str];
        }
        $find_us = implode(', ', $find_us_arr);
    }
?>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - How did you find us?: {{ $find_us }}
</p>
<?php
    $job_name = '';
    if(!empty($application->contact_me)){
        $list_id = json_decode($application->contact_me);
        $job_name_arr = \DB::table('career')->whereIn('id', $list_id)->get()->pluck('name')->toArray();
        $job_name = implode(', ', $job_name_arr);
    }
?>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Contact me about jobs: {{ $job_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Resume: <a target="_blank" href="{{ url('/uploads/' . $application->cv) }}">{{ str_replace('resume/', '', $application->cv) }}</a>
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Details about yourself and any additional skills: {{ $application->yourself }}
</p>
@endsection