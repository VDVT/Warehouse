@php
    use Botble\Mapsolution\Repositories\Interfaces\MapsolutionInterface;
    $mapItems = app(MapsolutionInterface::class)->allBy(['status' => true]);
@endphp
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/maps.js"></script>
<script src="https://www.amcharts.com/lib/4/geodata/worldLow.js"></script>
<script src="https://www.amcharts.com/lib/4/geodata/usaLow.js"></script>

<style type="text/css">
    #chartdiv {
      width: 100%;
      height: 500px;
    }
    .modal-content .thumbnail {
      display: flex;
      width: 150px;
      align-items: center;
      flex-flow: wrap;
    }
    .modal-content .thumbnail > img {
      width: 100%;
    }
   
</style>

<?php $source = Theme::asset()->url('images'); ?>
<div class="bg_about_us_2 d-flex align-items-center" style="background: url('{{$source}}/about_us/about_us.jpg');">
    <div class="container">
        <h2 class="title text-uppercase text-center">experience</h2>
        <div class="gap-50"></div>
        <div class="row">
            <div class="col-md-3 experience-item active text-center">
                <div class="item-dinner">
                    <p class="title">Specialize</p>
                    <span>United Material Handling, Inc. specializes in the selling of new storage products and systems to the material handling industry.</span>
                </div>
            </div>
            <div class="col-md-3 experience-item text-center">
                <div class="item-dinner">
                    <p class="title">Inventory</p>
                    <span>United Material Handling, Inc. is your source for all material handling systems. We carry a large array of styles and sizes.</span>
                </div>
            </div>
            <div class="col-md-3 experience-item text-center">
                <div class="item-dinner">
                    <p class="title">Capability</p>
                    <span>United Material Handling, Inc. also has the capability to retrofit all our pallet rack systems in our inventory to meet your specifications..</span>
                </div>
            </div>
            <div class="col-md-3 experience-item text-center">
                <div class="item-dinner">
                    <p class="title">Variety</p>
                    <span>We carry a variety of accessories: end aisle guards, guide rails, personnel barriers, safety netting, j-bolts, dock equipment, hoppers, pallet jacks, metal cabinets, lockers, wire baskets, signage, rolling ladders, and more.</span>
                </div>
            </div>
        </div>
    </div>
</div>
<h1 style="text-align:center;">United Material Handling, Inc. Locations</h1>
<div id="chartdiv"></div>
@foreach($mapItems as $item)
    <div class="modal-content d-none item-map-content-{{ $item->id }}">
        <div class="modal-body px-s1">
            <div class="text-uppercase text-custom mb-3">{{ $item->name}}</div>
            <div class="mb-3">
                <span>{{ $item->description }}</span>
            </div>
            <div class="thumbnail"><img src="{{ url($item->image ?? '') }}" alt=""></div>
        </div>
    </div>
@endforeach

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
        // // // Configure series
        var polygonTemplate = polygonSeries.mapPolygons.template;
        polygonTemplate.tooltipText = "{name}";
        polygonTemplate.fill = am4core.color("#ebebeb");
        
        // Create market
        var imageSeries                               = chart.series.push(new am4maps.MapImageSeries());
        var mapImage                                  = imageSeries.mapImages.template;
        mapImage.tooltipPosition                      = "fixed";
        var mapMarker                                 = mapImage.createChild(am4core.Sprite);
        mapMarker.path                                = "M4 12 A12 12 0 0 1 28 12 C28 20, 16 32, 16 32 C16 32, 4 20 4 12 M11 12 A5 5 0 0 0 21 12 A5 5 0 0 0 11 12 Z";
        mapMarker.width                               = 20;
        mapMarker.height                              = 20;
        mapMarker.scale                               = 0.7;
        mapMarker.fill                                = am4core.color("#C3202F");
        mapMarker.fillOpacity                         = 0.8;
        mapMarker.horizontalCenter                    = "middle";
        mapMarker.verticalCenter                      = "middle";
        imageSeries.calculateVisualCenter             = true;
        imageSeries.tooltip.label.interactionsEnabled = true;
        imageSeries.tooltip.keepTargetHover           = true;

        function addCity(coords) {
            var city                               = imageSeries.mapImages.create();
            city.latitude                          = coords.latitude;
            city.longitude                         = coords.longitude;
            city.tooltipHTML                       = coords.html;
            city.fill                              = am4core.color("#f5f5f5");
            city.calculateVisualCenter             = true;
            city.tooltip.label.interactionsEnabled = true;
            city.tooltip.keepTargetHover           = true;
            return city;
        }

        @foreach($mapItems as $item)
            var coords = {
                latitude : parseFloat("{{ $item->latitude }}"),
                longitude : parseFloat("{{ $item->longitude }}"),
                html : $('.item-map-content-{{ $item->id }}').html()
            }
            addCity(coords);
        @endforeach
    })
</script>