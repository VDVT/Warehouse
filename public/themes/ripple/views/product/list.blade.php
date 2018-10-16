<?php $source = Theme::asset()->url('images'); $link = route('public.product.details', 'anchors'); 
    $productBanner = ( empty(theme_option('product_banner')) ) ? $source.'/product/Rectangle 2.png' : theme_option('product_banner');
?>
<div class="page_product">
    <div class="bock_1 d-flex align-items-center" style="background: url('{{ $productBanner }}')">
        <div class="overlight"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center text-uppercase">
                    <h1 class="title text-uppercase text-center">products</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="bock_2 d-flex align-items-center">
        <div class="container">
            <div class="row products">
                <?php
                foreach ($product_categories as $key => $product_category) {
                ?>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $product_category->image }}" alt="{{ $product_category->name }}" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>{{ $product_category->name }}</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ route('public.product_category.details', $product_category->slug) }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <!-- <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r2.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>beam</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r3.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>cantilever</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r4.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>base</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r5.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>column guard</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r6.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>pallet flow</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r7.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>drive in arm</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r8.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>pallet stop</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r9.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>push back cart</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r10.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>rolling laders</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r11.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>row spacers</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="#">
                                <img src="{{ $source }}/product/r12.png" alt="product" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>pallet supports</p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <a href="{{ $link }}" class="btn btn-warning btn-effect">Detail <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
    <div class="bock_3 d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <p>Not sure what you need ? <span>We're here to help!</span></p>
                    <a href="{{ route('public.page.contactus') }}" class="btn btn-warning btn-effect text-uppercase">Contact Us</a>
                </div>
            </div>
        </div>
    </div>     
</div>
</section>