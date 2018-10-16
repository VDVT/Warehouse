<div class="container">
    <div class="p-t-6 p-b-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Gallery</li>
            </ol>
        </nav>
        <h1 class="text-muted1 font-1-demi">Gallery</h1>
    </div>
</div>
<div class="clearfix" style="background-color: #f7f7f7;">
    <div class="container">
        <div class="p-y-6">
            <h4 class="text-uppercase text-center m-b-2">building on your priorities</h4>
            <div class="gallery-slider">
                @foreach($galleries as $gallery)
                <div class="slider-item">
                    <img class="m-b-2" src="/{{ $gallery->image }}" alt="{{ $gallery->name }}">
                    <div class="text-center">
                        <a href="/{{ $gallery->image }}" target="_blank" class="text-custom"><i class="fas fa-download"></i> Download</a>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('.gallery-slider').slick({
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            adaptiveHeight: true
        });
    });
</script>
<style type="text/css">
    img{
        width: 100%
    }
</style>