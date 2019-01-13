@extends('bases::layouts.master')
@section('head')
    @parent
    <link rel="stylesheet" href="{{ asset('assets/css/cmstyle.css') }}">
    <link rel="stylesheet" href="{{ asset('vendor/cm/css/uikit.css') }}">
@endsection
@section('content')
	{!! Form::open(['route' => 'literature.order.post', 'id' => 'formOrder']) !!}
		<div class="row">
	        <div class="col-md-9">
	            <div class="main-form">
	                <div class="form-body">
	                    <div class="form-group">
	                    	<h4 class="uk-text-uppercase uk-background-default uk-padding-small">{{ __('Order Literatures') }}</h4>
	                    	<ul id="sortable" style="list-style-type: none; max-height: 1200px; overflow: scroll;">
	                    		@foreach($literatures as $literature)
	                    			<div class="uk-margin" rel="{{ $literature->name }}" id="{{ $literature->id }}">
						                <div class="uk-card uk-card-hover uk-card-default uk-card-body uk-card-small" style="background: #d6d5d5;">
						                  <span class="uk-flex uk-flex-left uk-flex-middle">{{ $literature->name }}</span>
						                </div>
						            </div>
	                    		@endforeach
	                        </ul>
	                    </div>
	                </div>
	            </div>
	            @php do_action(BASE_ACTION_META_BOXES, LITERATURE_MODULE_SCREEN_NAME, 'advanced') @endphp
	        </div>
	        <div class="col-md-3 right-sidebar">
	            @include('bases::elements.form-actions',['only_save' => true])
	        </div>
	    </div>
	{!! Form::close() !!}
@stop
@section('javascript')
    @parent
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sortable/0.8.0/js/sortable.min.js"></script>
    <script type="text/javascript">
    	$( function() {
	        $("#sortable").sortable({
	             placeholder: "highlight"
	        });
	        $("#sortable").disableSelection();
	    });

    	$("#formOrder").submit( function(eventObj) {
    		var orders = $( "#sortable" ).sortable('toArray') || [];
    		orders.forEach(item => {
    			$('<input type="hidden">').attr({
				    name: 'orders[]',
				    value: item
				}).appendTo('#formOrder');
    		});
		    return true;
		});
    </script>
@endsection
