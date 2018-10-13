<?php
    // $banners           = get_banners();
    // $product_solutions = get_product_solutions();
    // $testimonials      = get_testimonials();
    // $total_banner = count($banners);
    // echo $total_banner;
    // echo "<pre>";
    //     print_r($testimonials);
    // echo "</pre>";
    // die;
?>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        @foreach ($banners as $i => $banner)
            <li data-target="#carouselExampleIndicators" data-slide-to="{{ $i }}" @if ($i==0) class="active" @endif></li>
        @endforeach
        <!-- <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li> -->
    </ol>
    <div class="carousel-inner">
        @foreach ($banners as $i => $banner)
            <div class="carousel-item @if ($i==0) active @endif" style="background-image: url({{ $banner->image }})">
                <!-- <img class="img-fluid" src="{{ $banner->image }}" alt="{{ $banner->name }}"> -->
                <!-- <div class="carousel-caption d-md-block">
                    <h3 class="title text-uppercase"><?php echo $banner->name ?></span></h3>
                    <a href="{{ $banner->link }}" class="btn btn-primary btn-lg btn-effect">{{ $banner->button_text }}</a>
                </div> -->

                <div class="d-flex align-items-center box-caption-slider-home">
                    <div class="carousel-caption d-block">
                        <h3 class="title text-uppercase"><?php echo $banner->name ?></h3>
                        <!-- <a href="#" class="btn btn-primary btn-lg btn-effect">{{ $banner->button_text }}</a> -->
                    </div>
                </div>
            </div>
        @endforeach
        
        <!-- <div class="carousel-item">
            <img class="img-fluid" src="<?php echo Theme::asset()->url('images/banner.png'); ?>" alt="...">
            <div class="carousel-caption d-md-block">
                <h3 class="title text-uppercase">let's build <br> <span>your warehouse</span></h3>
                <a href="#" class="btn btn-primary btn-lg btn-effect">check solutions</a>
            </div>
        </div>
        <div class="carousel-item">
            <img class="img-fluid" src="<?php echo Theme::asset()->url('images/banner.png'); ?>" alt="...">
            <div class="carousel-caption d-md-block">
                <h3 class="title text-uppercase">let's build <br> <span>your warehouse</span></h3>
                <a href="#" class="btn btn-primary btn-lg btn-effect">check solutions</a>
            </div>
        </div> -->
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div class="jumbotron">
    <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-md-9">
                <div class="row d-flex align-items-md-center">
                    <div class="col-md-5">
                        <h2 class="title text-uppercase">products <br> solutions</h2>
                    </div>
                    <div class="col-md-7">
                        <!-- <p class="desc">Some quick example text to build on the card title and make up the bulk of the card's content. Some quick example text to build on the card title. Some quick example text to build on the card title and make up the</p> -->
                    </div>
                </div>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div>
<?php
    foreach ($product_solutions as $key => $product_solution) {
        if($key<4){
            $description = trunc($product_solution->description, 25);
            $link = route('public.product-solution.details', $product_solution->slug);
            if( ($key+1)%2 == 0 ){
?>
<div class="block-banner d-flex align-items-md-end align-items-center" style="background: url('<?php echo $product_solution->image; ?>')">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title text-uppercase"><?php echo $product_solution->name; ?></h4>
                        <p class="card-text"><?php echo $description; ?></p>
                        <a href="{{ $link }}" class="btn btn-primary btn-effect text-uppercase">read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
            }else{
                $leftright = ($key==0)?'left':'right';
?>
<div class="block-banner-2" style="background: url('<?php echo $product_solution->image; ?>')">
    <div class="container">
        <div class="row d-flex align-items-stretch">
            <?php if($key==0){ ?>
            <div class="col-md-5 d-flex align-items-center justify-content-center wow {{$leftright}}" data-wow-delay="1s">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title wow fadeInUp" data-wow-delay="1.1s"><?php echo $product_solution->name; ?></h4>
                        <p class="card-text wow fadeInUp" data-wow-delay="1.2s"><?php echo $description; ?></p>
                        <div class="text-right wow fadeInUp" data-wow-delay="1.3s"><a href="{{ $link }}" class="btn btn-primary btn-effect">read more</a></div>
                    </div>
                </div>
            </div>
            <div class="col"></div>
            <?php }else{ ?>
            <div class="col"></div>
            <div class="col-md-5 d-flex align-items-center justify-content-center wow {{$leftright}}" data-wow-delay="1s">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title wow fadeInUp" data-wow-delay="1.1s"><?php echo $product_solution->name; ?></h4>
                        <p class="card-text wow fadeInUp" data-wow-delay="1.2s"><?php echo $description; ?></p>
                        <div class="text-right wow fadeInUp" data-wow-delay="1.3s"><a href="{{ $link }}" class="btn btn-primary btn-effect">read more</a></div>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php
            }
        }
    }
?>
<!-- <div class="block-banner-2" style="background: url('<?php echo Theme::asset()->url('images/S1.png'); ?>')">
    <div class="container">
        <div class="row d-flex align-items-stretch">
            <div class="col-md-5 d-flex align-items-center justify-content-center wow left" data-wow-delay="1s">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title wow fadeInUp" data-wow-delay="1.1s">roll-form <br> pallet rack</h4>
                        <p class="card-text wow fadeInUp" data-wow-delay="1.2s">Finding the right storage system can be difficult. Rolled-Formed is the multiple storage systems for non-uniform inventory. They offer the most flexibility</p>
                        <div class="text-right wow fadeInUp" data-wow-delay="1.3s"><a href="#" class="btn btn-primary btn-effect">read more</a></div>
                    </div>
                </div>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div>
<div class="block-banner d-flex align-items-md-end align-items-center" style="background: url('<?php echo Theme::asset()->url('images/S2.png'); ?>')">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title text-uppercase">cantilever</h4>
                        <p class="card-text">These types of racks increase space utilization & are faster to load & unload compared to standard pallet racks</p>
                        <a href="#" class="btn btn-primary btn-effect text-uppercase">read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="block-banner-2" style="background: url('<?php echo Theme::asset()->url('images/S3.png'); ?>')">
    <div class="container">
        <div class="row d-flex align-items-stretch">
            <div class="col"></div>
            <div class="col-md-5 d-flex align-items-center justify-content-center wow right" data-wow-delay="1s">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title wow fadeInUp" data-wow-delay="1.1s">pick modules</h4>
                        <p class="card-text wow fadeInUp" data-wow-delay="1.2s">Pick Module systems are often customized for each facility, since storage and picking requirements can differ greatly between warehouses</p>
                        <div class="text-right wow fadeInUp" data-wow-delay="1.3s"><a href="#" class="btn btn-primary btn-effect">read more</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="block-banner d-flex align-items-md-end align-items-center" style="background: url('<?php echo Theme::asset()->url('images/S4.png'); ?>')">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title text-uppercase">push-back rack</h4>
                        <p class="card-text">Push Back has the ability to be configured on multiple levels high. Pushbacks are utilized for heavy duty inventory</p>
                        <a href="#" class="btn btn-primary btn-effect text-uppercase">read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->
<div class="container-fluid" id="media">
    <div class="row d-flex flex-wrap">
        <?php
            foreach ($product_solutions as $key => $product_solution) {
                $link = route('public.product-solution.details', $product_solution->slug);
                if($key>3){
        ?>
        <div class="col-md-3 col-6 p-0">
            <div class="card">
                <img class="card-img-top" src="<?php echo $product_solution->image; ?>" alt="<?php echo $product_solution->name; ?>">
                <div class="card-body">
                    <h4 class="card-title text-uppercase"><a href="{{ $link }}"><?php echo $product_solution->name; ?></a></h4>
                </div>
            </div>
        </div>
        <?php
                }
            }
        ?>
        <!-- <div class="col-md-4 col-6">
            <div class="card">
                <img class="card-img-top" src="<?php echo Theme::asset()->url('images/6_Solutions/rectangle-20-copy-2.png'); ?>" alt="">
                <div class="card-body">
                    <h4 class="card-title text-uppercase"><a href="#">mezzanines</a></h4>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-6">
            <div class="card">
                <img class="card-img-top" src="<?php echo Theme::asset()->url('images/6_Solutions/carton.png'); ?>" alt="">
                <div class="card-body">
                    <h4 class="card-title text-uppercase"><a href="#">carton flow</a></h4>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-6">
            <div class="card">
                <img class="card-img-top" src="<?php echo Theme::asset()->url('images/6_Solutions/pallet.png'); ?>" alt="">
                <div class="card-body">
                    <h4 class="card-title text-uppercase"><a href="#">pallet flow</a></h4>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-6">
            <div class="card">
                <img class="card-img-top" src="<?php echo Theme::asset()->url('images/6_Solutions/structural.png'); ?>" alt="">
                <div class="card-body">
                    <h4 class="card-title text-uppercase"><a href="#">structural rack</a></h4>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-6">
            <div class="card">
                <img class="card-img-top" src="<?php echo Theme::asset()->url('images/6_Solutions/accessories.png'); ?>" alt="">
                <div class="card-body">
                    <h4 class="card-title text-uppercase"><a href="#">accessories</a></h4>
                </div>
            </div>
        </div> -->
    </div>
</div>
<div class="block-industry">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h3 class="title text-uppercase">INDUSTRIES <br> we serve</h3>
                <p class="desc">UMH has extensive experience serving multitudes of industries over the years. This experience has provided UMH with the knowledge of industry specific challenges.</p>
            </div>
            <div class="col-md-9">
                <div class="row d-flex flex-wrap">
                    @foreach ($industrials as $i => $industrial)
                    <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="{{ route('public.industrial.details', $industrial->slug) }}">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="{{ $industrial->icon }}" alt="{{ $industrial->name }}"></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">{{ $industrial->name }}</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    @endforeach
                    <!-- <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="#">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="<?php echo Theme::asset()->url('images/icon/noun-1373299-cc.png'); ?>" alt=""></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">3PL</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="#">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="<?php echo Theme::asset()->url('images/icon/noun-1294170-cc.png'); ?>" alt=""></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">FOOD SERVICE</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="#">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="<?php echo Theme::asset()->url('images/icon/noun-961122-cc.png'); ?>" alt=""></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">retail</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="#">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="<?php echo Theme::asset()->url('images/icon/noun-1340588-cc.png'); ?>" alt=""></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">construction</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="#">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="<?php echo Theme::asset()->url('images/icon/noun-1373299-cc.png'); ?>" alt=""></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">wholesaler</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="#">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="<?php echo Theme::asset()->url('images/icon/noun-1360037-cc.png'); ?>" alt=""></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">manufacturing</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="#">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="<?php echo Theme::asset()->url('images/icon/noun-823628-cc.png'); ?>" alt=""></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">chemical</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-6">
                        <div class="card">
                            <a href="#">
                                <div class="card-header d-flex justify-content-center align-items-center"><img class="card-img-top" src="<?php echo Theme::asset()->url('images/icon/noun-310985-cc.png'); ?>" alt=""></div>
                                <div class="card-body">
                                    <h4 class="card-title text-uppercase text-center">pharmaceutical</h4>
                                </div>
                            </a>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- <div class="block-rate text-center">
    <div class="container">
        <h3 class="title text-uppercase">Testimonials</h3>
        <div class="owl-carousel owl-theme" id="slide_agents">
            <?php foreach ($testimonials as $key => $testimonial) {?>
            <div class="item">
                <div class="media">
                    <img class="mr-3 img" src="{{ $testimonial->image }}" alt="{{ $testimonial->name }}">
                    <div class="media-body">
                        <p class="desc">{{ $testimonial->content }}</p>
                        <h5 class="name mt-0 text-uppercase">{{ $testimonial->name }}</h5>
                        <div class="author text-uppercase">{{ $testimonial->position }}</div>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div> -->
<!-- <div class="block-contact d-md-flex align-items-md-center">
    <div class="container">
        <div class="row d-md-flex align-items-md-center">
            <div class="col-md-4">
                <h3 class="title text-uppercase">contact <br> account manager</h3>
            </div>
            <div class="col-md-8">
                <form class="form_send" role="form" method="POST" action="{{ url('send-contact-account-manager') }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">First Name</span></label>
                                <input name="first_name" type="text" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">Last Name</span></label>
                                <input name="last_name" type="text" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">Email</span></label>
                                <input name="email" type="email" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">Phone</span></label>
                                <input name="phone" type="text" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">Company Name</span></label>
                                <input name="company_name" type="text" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">Address</span></label>
                                <input name="address" type="text" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-4 col-4">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">City</span></label>
                                <input name="city" type="text" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-4 col-4">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">State</span></label>
                                 <input type="text" class="form-control c1"> 
                                <select name="state" class="form-control c1">
                                    <option value=""></option>
                                    <?php foreach ($states as $id => $state) {
                                        echo '<option value="'.$id.'">'.$state.'</option>';
                                    } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4 col-4">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">Zip Code</span></label>
                                <input name="zipcode" type="text" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="label-control"><span class="label-text">Project Square Footage</span></label>
                                <input name="project_square_footage" type="text" class="form-control c1">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <textarea name="message" class="form-control c2" rows="4" placeholder="Message"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12"><button type="submit" class="btn btn-primary btn-effect">SEND</button></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div> -->
</section>