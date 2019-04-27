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
            <div class="row gallery-wrapper">
                @foreach($galleries as $gallery)
                <div class="col-md-3 col-sm-6">
                    <div class="gallery-item">
                        <div class="gallery-thumb">
                            <img class="content" src="{{ $gallery->image }}" alt=""/>
                            <div class="gallery-backdrop" data-id="{{ $gallery->id }}">
                                <a href="javascript:void(0)" class="text-white h1"><img src="assets/img/icon/search-plus.png" class="w-100"></a>
                            </div>
                        </div>
                        <div class="gallery-title">{{ $gallery->name }}</div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>

<div id="img-modal" style="display: none">
    @foreach($galleries as $gallery)
    <div class="light-gallery" id="gallery-item-{{ $gallery->id }}">
        @php 
            $metaItems = $gallery->getMetaImages();
        @endphp
        @foreach($metaItems as $item)
            @php
                $jsonData = $item->images;
            @endphp
            @if($jsonData)
                @foreach($jsonData as $image)
                    <div class="item" data-src="{{ url($image['img']) }}">
                        <img class="lazy lazy-loaded" src="{{ url($image['img']) }}" data-lazy-type="image" data-lazy-src="{{ url($image['img']) }}" alt="{{ $image['description']}}">
                        <noscript>
                            <img src="{{ url($image['img']) }}" alt="{{ $image['description']}}"/>
                        </noscript>
                        <p></p>
                        <div class="video-title">{{ $image['description']}}</div>
                    </div>
                @endforeach
            @endif
        @endforeach
    </div>
    @endforeach
</div>

<style type="text/css">
    img.content {
        width: 100%;
    }
</style>


<script type="text/javascript">
    $(document).ready(function () {
        $('.gallery-backdrop').on('click', function(e) {
            e.preventDefault();
            var id = this.getAttribute('data-id');
            $(`#gallery-item-${id}`).find('.item:first-child').trigger('click');
        });
        $('.light-gallery').lightGallery({
            selector: '.item',
            thumbnail: true,
        });
    });
</script>