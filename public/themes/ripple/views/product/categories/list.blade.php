<?php $source = Theme::asset()->url('images'); $link = route('public.product.details', 'anchors'); 
    $productBanner = ( empty(theme_option('product_banner')) ) ? $source.'/product/Rectangle 2.png' : theme_option('product_banner');
?>

<!-- Add source template products -->
<div class="bg-overlay bg-size-cover" style="background: url('{{ $productBanner }}'); min-height: 351px;" layer-bg="black">
    <h1 class="bg-overlay-title text-uppercase text-center text-white">products</h1>
</div>

<div class="clearfix" style="background-color: #f7f7f7;" >
     <div class="container">
        <div class="p-y-6">
            <div class="nav-left">
                <ul class="nav nav-pills-custom nav-small nav-fill with-icon" id="myTab" role="tablist">
                    @foreach($tabs as $key => $tab)
                        <li class="nav-item">
                            <a class="nav-link rounded {{ $key == 0 ? 'active' : '' }}" id="tab-{{ $tab->id }}-tab" data-toggle="tab" href="#tab-{{ $tab->id }}" role="tab" aria-controls="tab-{{ $tab->id }}" aria-selected="true">{{ $tab->name }}</a>
                        </li>
                    @endforeach
                </ul>
                <div class="tab-content pl-xl-4" id="pills-tabContent">
                    @foreach($tabs as $key => $tab)
                        <div class="tab-pane fade {{ $key == 0 ? 'show active' : '' }}" id="tab-{{ $tab->id }}" role="tabpanel" aria-labelledby="tab-{{ $tab->id }}-tab">
                            <div class="row product-wrapper lht-products">
                                @foreach($tab->categories as $category)
                                    <div class="col-md-3 col-sm-6">
                                        <div class="product-item item-box">
                                            <div class="box-image">
                                                <a href="#">
                                                    <img src="{{ $category->image }}" alt="{{ $category->name }}" width="100%">
                                                </a>
                                            </div>
                                            <!-- <div class="card-ratio-1-1">
                                                <img class="content" src="{{ $category->image }}" alt="{{ $category->name }}"/>
                                            </div> -->
                                            <div class="product-title">{{ $category->name }}</div>
                                            <div class="product-backdrop">
                                                <a href="{{ route('public.product_category.details', $category->slug) }}" class="btn btn-outline-custom-i btn-round">Detail <i class="fas fa-long-arrow-alt-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bg-white">
    <div class="container">
        <div class="text-center p-y-5">
            <div class="h4 m-b-2 text-muted1">Not sure what you need ? <span class="text-custom">We're here to help!</span></div>
            <a href="{{ route('public.page.contactus') }}" class="btn btn-outline-custom btn-round">Contact Us</a>
        </div>
    </div>
</div>
<!-- End add source template products -->