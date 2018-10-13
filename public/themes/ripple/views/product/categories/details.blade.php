<?php $source = Theme::asset()->url('images'); $link = route('public.product.details', 'product-details'); ?>
<div class="page_product_detail">
    <div class="bock_1 align-items-center">
        <div class="row">
            <div class="col-md-4">
                <!-- <div class="img-product text-center product-gallery">
                    <div class="product-carousel slider-for" id="slider">
                        <div class="gallery-item"><img class="img-fluid" src="{{ $product_category->image }}"></div>
                        <div class="gallery-item"><img class="img-fluid" src="{{ $product_category->image1 }}"></div>
                        <div class="gallery-item"><img class="img-fluid" src="{{ $product_category->image2 }}"></div>
                    </div>
                
                    <ul class="product-thumbnails slider-nav" id="thumbnail_slider">
                        <li>
                            <a href="javascript:void(0);"><img src="{{ $product_category->image }}"></a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="{{ $product_category->image1 }}"></a>
                        </li>
                        <li>
                            <a href="javascript:void(0);"><img src="{{ $product_category->image2 }}"></a>
                        </li>
                    </ul>
                </div> -->

                <div class="img-product text-center">
                    <img src="{{ $product_category->image }}" alt="{{ $product_category->name }}">
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

            <style>
                .img-product{position: relative;}
                .img-product .arrow{
                    position: absolute;
                    color: #999;opacity: .6;
                    margin-top: -25px;top: 50%;
                }
                .img-product .arrow i{
                    font-size: 50px;
                }
                .img-product .arrow.arrow-left{
                    left: 15px; 
                }
                .img-product .arrow.arrow-right{
                    right: 15px;
                }
                 .product-carousel img {
                    -o-object-fit: cover;
                    object-fit: cover;
                    width: 100%;
                    max-height: 450px;
                }
                .product-thumbnails li {
                    display: inline-block;
                    margin: 0 3px 10px;
                }
                .product-thumbnails li>a {
                    display: block;
                    width: 100%;
                    height: 100%;
                    background-color: #f6d6cd;
                    -webkit-transition: border-color .25s;
                    -moz-transition: border-color .25s;
                    -o-transition: border-color .25s;
                    -ms-transition: border-color .25s;
                    transition: border-color .25s;
                    border: 1px solid #fff;
                }
                .product-thumbnails li>a>img {
                    -o-object-fit: cover;
                    object-fit: cover;
                    width: 100%;
                    height: 100%;
                }
            </style>
            <div class="col-md-6">
                <div class="content-product">
                    <h1 class="title text-uppercase">{{ $product_category->name }}</h1>
                    <div class="entry mb-4">
                        {!! $product_category->description !!}
                    </div>
                    <?php //if($product_category->product_solutions->count() > 0){ ?>
                    <!-- <div class="short-des">
                        <h3 class="title-short">Related Solutions</h3>
                        <p>
                            <?php foreach ($product_category->product_solutions as $i => $product_solution) {
                                echo '<a href="'.route('public.product-solution.details', $product_solution->slug).'">'.$product_solution->name.'</a>';
                                if($i+1 != $product_category->product_solutions->count()) echo ', ';
                            } ?>.
                        </p>
                    </div>
                    <hr> -->
                    <?php //} ?>
                    <form class="form-product box-relative" type="post" data-category="{{ $product_category->id }}">
                        <div class="cm-loading-bg"><i class="fa fa-spinner fa-spin fa-3x fa-fw"></i></div>
                        <p class="error alert s-hidden alert-danger" style="display:none;">We currently do not have any used.</p>
                        <div class="row">
                            <!-- <div class="col-md-3">
                                <div class="form-group">
                                    <select name="condition" class="condition attribute-action form-control form-control-lg">
                                        <option value="">Condition</option>
                                        <?php foreach (config('products.condition') as $key => $value) { ?>
                                        <option value="{{$key}}">{{$value}}</option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div> -->
                            <!-- <div class="col-md-12">
                                <div class="form-group">
                                    <select name="size" class="size attribute-action form-control form-control-lg">
                                        <option value="">Size</option>
                                        <?php foreach ($sizes as $key => $size) { ?>
                                        <option value="{{ $size }}">{{ $size }}</option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div> -->
                        </div>
                        <!-- <div class="box-more-opt"><span class="btn-more-opt btn">More options <i class="fa fa-angle-down" aria-hidden="true"></i></span><span class="btn-reset pull-right">Reset</span></div>
                        <div class="row more-option d-none">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <select name="color" class="color attribute-action form-control form-control-lg">
                                        <option value="">Color</option>
                                        <?php foreach ($colors as $key => $color) { ?>
                                        <option value="{{ $color }}">{{ $color }}</option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <select name="width" class="width attribute-action form-control form-control-lg">
                                        <option value="">Width</option>
                                        <?php foreach ($widths as $key => $width) { ?>
                                        <option value="{{ $width }}">{{ $width }}</option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <select name="height" class="height attribute-action form-control form-control-lg">
                                        <option value="">Height</option>
                                        <?php foreach ($heights as $key => $height) { ?>
                                        <option value="{{ $height }}">{{ $height }}</option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div> -->
                        <div class="part-type">
                            <!-- <div class="item">
                                <p class="title">Hilti KB3, 4.25 Length, 0.625 Diameter</p>
                                <p class="des">New Anchors, 4-1/4" Length, 5/8" Diameter, Style: Hilti KB3, Color: Galvanized</p>
                            </div>
                            <div class="item choose">
                                <p class="title">Power Bull ICB# 5042, 4.25 Length, 0.625 Diameter</p>
                                <p class="des">New Anchors, 4-1/4" Length, 5/8" Diameter, Style: Power Bull ICB# 5042, Color: Galvanized</p>
                            </div>
                            <div class="item">
                                <p class="title">Power Bull ICB# 5042 , 4.25 Length, 0.625 Diameter</p>
                                <p class="des">New Anchors, 4-1/4" Length, 5/8" Diameter, Style: Power Bull ICB# 5042 , Color: Galvanized</p>
                            </div> -->
                        </div>
                        <input type="hidden" class="product_id" value="0">
                        <!-- <hr> -->
                        <div class="box-quality" style="display: none;">
                            <div class="box-1 pull-left">
                                <div class="form-group d-flex align-items-center">
                                    <input style="display: none;" type="number" name="quality" min="0" value="1" disabled class="form-control form-control-lg input-number">
                                    <p><span class="qty_available"></span> Available</p>
                                </div>
                            </div>
                            <div class="box-2 pull-right text-right">
                                <p class="title">Price per unit</p>
                                <p class="total"><span class="usd">$</span><span class="amount">192</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- <hr>
                        <div class="box-total">
                            <div class="box-1 pull-left">
                                <div class="d-flex align-items-bottom">
                                    <p>100 x New Anchors, 4-1/4" Length, 5/8" Diameter, Style: Power Bull ICB# 5042, Color: Galvanized</p>
                                </div>
                            </div>
                            <div class="box-2 pull-right text-right">
                                <p class="title">Total</p>
                                <p class="total"><span class="usd">$</span><span class="amount">192</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <input type="button" id="add-to-system" disabled name="submit" value="Add to my system" class="btn btn-submit"> -->
                    </form>
                </div>
            </div>
        </div>
    </div>    
</div>
</section>
<script>
    $(document).ready(function() {
        // $('.slider-for').slick({
        //     slidesToShow: 1,
        //     slidesToScroll: 1,
        //     // accessibility: false,
        //     // infinite: false,
        //     dots: false,
        //     arrows: true,
        //     fade: true,
        //     asNavFor: '.slider-nav'
        // });

        // $('.slider-nav').slick({
        //     slidesToShow: 3,
        //     slidesToScroll: 1,
        //     asNavFor: '.slider-for',
        //     // accessibility: false,
        //     // infinite: false,
        //     dots: false,
        //     arrows: true,
        //     focusOnSelect: true
        // });

        $("#slider").slick({
            dots: true,
            arrows: true,
            asNavFor: "#thumbnail_slider"
          });
          $("#thumbnail_slider").slick({
               
            asNavFor: "#slider",
            slidesToShow: 3,
  slidesToScroll: 1,
  dots: true,
  centerMode: true,
  focusOnSelect: true
          });
    });
</script>