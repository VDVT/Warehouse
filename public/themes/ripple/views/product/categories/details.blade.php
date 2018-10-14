<?php $source = Theme::asset()->url('images'); $link = route('public.product.details', 'product-details'); ?>
<div class="page_product_detail">
    <div class="bock_1 align-items-center">
        <div class="row">
            <div class="col-md-4">
                <div class="img-product text-center">
                    <img src="{{ $product_category->image }}" alt="{{ $product_category->name }}"  class="main-img-product">
                    <a href="" class="arrow arrow-left" type="prev"><i class="fa fa-arrow-circle-left"></i></a>
                    <a href="" class="arrow arrow-right" type="next"><i class="fa fa-arrow-circle-right"></i></a>
                </div>
                <div class="img-product-small mt-4 mb-4">
                    <div class="row">
                        @if(!empty($product_category->image))
                            <div class="col-md-4">
                                <img class="img-fluid active" data-num="1" src="{{ $product_category->image }}" alt="{{ $product_category->name }}">
                            </div>
                        @endif
                        @if(!empty($product_category->image1))
                            <div class="col-md-4">
                                <img class="img-fluid" data-num="2" src="{{ $product_category->image1 }}" alt="{{ $product_category->name }}-1">
                            </div>
                        @endif
                        @if(!empty($product_category->image2))
                            <div class="col-md-4">
                                <img class="img-fluid" data-num="3" src="{{ $product_category->image2 }}" alt="{{ $product_category->name }}-2">
                            </div>
                        @endif
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="content-product">
                    <h1 class="title text-uppercase">{{ $product_category->name }}</h1>
                    <div class="entry mb-4">
                        {!! $product_category->description !!}
                    </div>
                </div>
            </div>
        </div>
    </div>    
</div>
</section>