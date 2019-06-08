@extends('bases::layouts.master')
@section('head')
    @parent
    <script src="https://www.amcharts.com/lib/4/core.js"></script>
    <script src="//www.amcharts.com/lib/4/charts.js"></script>
    <script src="https://www.amcharts.com/lib/4/maps.js"></script>
    <script src="https://www.amcharts.com/lib/4/geodata/worldLow.js"></script>
    <script src="https://www.amcharts.com/lib/4/geodata/usaLow.js"></script>
    <script src="//www.amcharts.com/lib/4/themes/animated.js"></script>

    <style type="text/css">
        #chartdiv {
          width: 100%;
          height: 350px;
        }
    </style>
@endsection
@section('content')
    {!! Form::open(['id' => 'map-form','route' => ['mapsolution.edit', $mapsolution->id]]) !!}
        @php do_action(BASE_ACTION_EDIT_CONTENT_NOTIFICATION, MAPSOLUTION_MODULE_SCREEN_NAME, request(), $mapsolution) @endphp
        <div class="row">
            <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group @if ($errors->has('name')) has-error @endif">
                            <label for="name" class="control-label required">{{ trans('bases::forms.name') }}</label>
                            {!! Form::text('name', $mapsolution->name, ['class' => 'form-control', 'id' => 'name', 'placeholder' => trans('bases::forms.name_placeholder'), 'data-counter' => 120]) !!}
                            {!! Form::error('name', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('description')) has-error @endif">
                            <label for="description" class="control-label required">{{ trans('Description') }}</label>
                            {!! Form::text('description', $mapsolution->description, ['class' => 'form-control', 'id' => 'description', 'placeholder' => trans('Description'), 'data-counter' => 120]) !!}
                            {!! Form::error('description', $errors) !!}
                        </div>

                        <div class="form-group @if ($errors->has('latitude')) has-error @endif">
                            <label for="latitude" class="control-label required">{{ trans('latitude') }}</label>
                            {!! Form::text('latitude', $mapsolution->latitude, ['class' => 'form-control', 'id' => 'latitude', 'placeholder' => trans('latitude'), 'data-counter' => 120]) !!}
                            {!! Form::error('latitude', $errors) !!}
                        </div>
                        <div class="form-group @if ($errors->has('longitude')) has-error @endif">
                            <label for="longitude" class="control-label required">{{ trans('longitude') }}</label>
                            {!! Form::text('longitude', $mapsolution->longitude, ['class' => 'form-control', 'id' => 'longitude', 'placeholder' => trans('longitude'), 'data-counter' => 120]) !!}
                            {!! Form::error('longitude', $errors) !!}
                        </div>

                        <div class="form-group">
                           <div id="chartdiv"></div>
                        </div>
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, MAPSOLUTION_MODULE_SCREEN_NAME, 'advanced', $mapsolution) @endphp
            </div>
            <div class="col-md-3 right-sidebar">
                @include('bases::elements.form-actions')
                @include('bases::elements.forms.status', ['selected' => $mapsolution->status])
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4><span class="required">{{ trans('literature::literature.forms.featured_image') }}</span></h4>
                    </div>
                    <div class="widget-body">
                        {!! Form::mediaImage('image', $mapsolution->image) !!}
                        {!! Form::error('image', $errors) !!}
                    </div>
                </div>
                @php do_action(BASE_ACTION_META_BOXES, MAPSOLUTION_MODULE_SCREEN_NAME, 'top', $mapsolution) @endphp
                @php do_action(BASE_ACTION_META_BOXES, MAPSOLUTION_MODULE_SCREEN_NAME, 'side', $mapsolution) @endphp
            </div>
        </div>
    {!! Form::close() !!}
@stop


@push('footer')
    <script type="text/javascript">
        am4core.ready(function() {
            /**
             * ---------------------------------------
             * This demo was created using amCharts 4.
             *
             * For more information visit:
             * https://www.amcharts.com/
             *
             * Documentation is available at:
             * https://www.amcharts.com/docs/v4/
             * ---------------------------------------
             */
            // Create map instance
            var chart = am4core.create("chartdiv", am4maps.MapChart);

            // Set map definition
            chart.geodata = am4geodata_usaLow;
            chart.maxZoomLevel = 1;
            chart.seriesContainer.draggable = false;
            chart.seriesContainer.resizable = false;

            // Set projection
            chart.projection = new am4maps.projections.AlbersUsa();

            // Create map polygon series
            var polygonSeries = chart.series.push(new am4maps.MapPolygonSeries());
            polygonSeries.useGeodata = true;

            // Configure series
            var polygonTemplate = polygonSeries.mapPolygons.template;
            polygonTemplate.tooltipText = "{name}";
            // polygonTemplate.fill = am4core.color("#74B266");
            polygonTemplate.fill = am4core.color("#ebebeb");
            
            // var colorSet = new am4core.ColorSet();
            // // take a color from color set
            // polygonTemplate.adapter.add("fill", function(fill, target) {
            //   return colorSet.getIndex(target.dataItem.index + 1).saturate(0.2);
            // });

            var imageSeries = chart.series.push(new am4maps.MapImageSeries());
            var mapImage = imageSeries.mapImages.template;
            var mapMarker = mapImage.createChild(am4core.Sprite);
            mapMarker.path = "M4 12 A12 12 0 0 1 28 12 C28 20, 16 32, 16 32 C16 32, 4 20 4 12 M11 12 A5 5 0 0 0 21 12 A5 5 0 0 0 11 12 Z";
            mapMarker.width = 32;
            mapMarker.height = 32;
            mapMarker.scale = 0.7;
            mapMarker.fill = am4core.color("#3F4B3B");
            mapMarker.fillOpacity = 0.8;
            mapMarker.horizontalCenter = "middle";
            mapMarker.verticalCenter = "bottom";

            // show current position
            var marker = imageSeries.mapImages.create();
            marker.latitude  = parseFloat("{{ $mapsolution->latitude }}");
            marker.longitude = parseFloat("{{ $mapsolution->longitude }}");
                
            chart.seriesContainer.events.on("hit", function(ev) {
              var coords       = chart.svgPointToGeo(ev.svgPoint);
              imageSeries.mapImages.clear();
              var marker       = imageSeries.mapImages.create();
              marker.latitude  = coords.latitude;
              marker.longitude = coords.longitude;
              $('#latitude').val(coords.latitude);
              $('#longitude').val(coords.longitude);
            });
        })
            
    </script>
@endpush