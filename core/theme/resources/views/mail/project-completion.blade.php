@extends('theme::mail.layout')

@section('content')
<p style="font-size:12px; line-height:16px; margin:0 0 10px 0;">
    {{ setting('site_title') }} just received a project completion from UMH Wholesale website
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Name: {{ $projectCompletion->name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Foreman: {{ $projectCompletion->foreman }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Date: {{ $projectCompletion->date }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Job Number: {{ $projectCompletion->job_number }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Company Name: {{ $projectCompletion->company_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Address: {{ $projectCompletion->address }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Description of Work: {{ $projectCompletion->work }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Comments: {{ $projectCompletion->comment }}
</p>
@endsection