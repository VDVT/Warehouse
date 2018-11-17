<section class="banner-slider">
 	@foreach ($banners as $i => $banner)
 		<div class="banner-img">
	        <img src="{{ $banner->image }}">
	        <div class="banner-title">{!! $banner->name !!}</div>
	    </div>
    @endforeach
</section>
<style type="text/css">
    .banner-img .banner-title { font-size: 49px }
</style>
<script type="text/javascript">
	$(document).ready(function() {
        $('.banner-slider').slick({
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            adaptiveHeight: true
        });
    });
</script>