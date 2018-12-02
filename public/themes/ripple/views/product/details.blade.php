<?php $source = Theme::asset()->url('images'); ?>
<div class="page_product_detail">
    <div class="bock_1 align-items-center">
        <div class="row">
            <div class="col-md-4">
                <div class="img-product text-center">
                    <img src="{{ $product->image }}" alt="{{ $product->name }}"  class="main-img-product">
                    <a href="" class="arrow arrow-left" type="prev"><i class="fa fa-arrow-circle-left"></i></a>
                    <a href="" class="arrow arrow-right" type="next"><i class="fa fa-arrow-circle-right"></i></a>
                </div>
                <div class="img-product-small mt-4 mb-4">
                    <div class="row">
                        @if(!empty($product->image))
                            <div class="col-md-4">
                                <img class="img-fluid active" data-num="1" src="{{ $product->image }}" alt="{{ $product->name }}">
                            </div>
                        @endif
                        @if(!empty($product->image1))
                            <div class="col-md-4">
                                <img class="img-fluid" data-num="2" src="{{ $product->image1 }}" alt="{{ $product->name }}-1">
                            </div>
                        @endif
                        @if(!empty($product->image2))
                            <div class="col-md-4">
                                <img class="img-fluid" data-num="3" src="{{ $product->image2 }}" alt="{{ $product->name }}-2">
                            </div>
                        @endif
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="content-product">
                    <h1 class="title text-uppercase">{{ $product->name }}</h1>
                    <div class="entry mb-4">
                        {!! $product->description !!}
                    </div>
                </div>
            </div>
        </div>
    </div>    
</div>
</section>