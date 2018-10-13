@extends('theme::mail.layout')

@section('content')
<p style="font-size:12px; line-height:16px; margin:0 0 10px 0;">
    {{ setting('site_title') }} just received a contact
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Name: {{ $contact->name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Company Name: {{ $contact->company_name }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Email: {{ $contact->email }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Phone: {{ $contact->phone }}
</p>
<p style="font-size:12px; line-height:16px; margin:0 0 7px 15px;">
    - Message: {{ $contact->content }}
</p>
@endsection