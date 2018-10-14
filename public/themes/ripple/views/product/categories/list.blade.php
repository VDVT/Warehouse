<?php $source = Theme::asset()->url('images'); $link = route('public.product.details', 'anchors'); 
    $productBanner = ( empty(theme_option('product_banner')) ) ? $source.'/product/Rectangle 2.png' : theme_option('product_banner');
?>

<!-- Add source template products -->
<div class="container fluid" style="background: url('{{ $productBanner }}')">
    <div class="p-t-6 p-b-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">Products</li>
            </ol>
        </nav>
        <h1 class="text-muted1 font-1-demi">Products</h1>
    </div>
</div>
<div class="clearfix" style="background-color: #f7f7f7;" >
    <div class="container">
        <div class="p-y-6">
            <div class="row product-wrapper">
                @foreach($product_categories as $product_category)
                    <div class="col-md-3 col-sm-6">
                        <div class="product-item">
                            <div class="card-ratio-1-1">
                                <img class="content" src="{{ $product_category->image }}" alt="{{ $product_category->name }}"/>
                            </div>
                            <div class="product-title">{{ $product_category->name }}</div>
                            <div class="product-backdrop">
                                <a href="{{ route('public.product_category.details', $product_category->slug) }}" class="btn btn-outline-custom-i btn-round">Detail <i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<div class="bg-white">
    <div class="container">
        <div class="text-center p-y-5">
            <div class="h4 m-b-2 text-muted1">Not sure what you need ? <span class="text-custom">We're here to help!</span></div>
            <button class="btn btn-outline-custom btn-round">Contact Us</button>
        </div>
    </div>
</div>
<!-- End add source template products -->