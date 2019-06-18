<section class="banner-slider">
 	@foreach ($banners as $i => $banner)
 		<div class="banner-img">
	        <img src="{{ $banner->image }}">
	        <div class="banner-title">{!! $banner->name !!}</div>
	    </div>
    @endforeach
</section>
<style type="text/css">
    .banner-img .banner-title { 
        font-size: 49px;
        /*background-color: rgba(79, 174, 212, 0.41);*/
        visibility: visible;
    }
</style>
<script type="text/javascript">
	$(document).ready(function() {
        $('.banner-slider').slick({
            speed: 300,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 5000,
        });
    });
</script>