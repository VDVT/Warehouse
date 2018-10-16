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
                            <div class="gallery-backdrop">
                                <a href="{{ route('public.gallery.detail',['id' => $gallery->id]) }}" class="text-white h1"><img src="assets/img/icon/search-plus.png" class="w-100"></a>
                            </div>
                        </div>
                        <div class="gallery-title">{{ $gallery->description }}</div>
                        <a href="{{ $gallery->image }}" target="_blank" class="text-custom"><i class="fas fa-download"></i> Download</a>
                    </div>
                </div>
                @endforeach
            </div>
            <!-- <div class="text-center">
                <button class="btn btn-outline-custom btn-round">Load more</button>
            </div> -->
        </div>
    </div>
</div>
<style type="text/css">
    img.content {
        width: 100%;
    }
</style>