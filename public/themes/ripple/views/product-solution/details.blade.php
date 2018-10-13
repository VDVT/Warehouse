<div class="text-center block-about">
    <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-md-8">
                <h3 class="title">{{ $product_solution->name }}</h3>
                <p class="desc"><?php echo $product_solution->description; ?></p>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div>
<?php
    $performances = json_decode($product_solution->performance);
    foreach ($performances as $key => $performance) {
?>
<div class="block-product-soluton container-fluid d-flex align-items-center justify-content-center" style="background: url('{{ $performance->image }}')">
    <h3 class="title wow fadeInUp" data-wow-delay="0.5s"><?php echo $performance->content; ?></h3>
</div>
<?php } ?>
<!-- <div class="block-product-soluton container-fluid d-flex align-items-center justify-content-center" style="background: url('{{ Theme::asset()->url('images/rectangle-611-copy.png') }}')">
    <h3 class="title wow fadeInUp" data-wow-delay="0.5s">Offers greater storage capacity & effciency in <br> storing long items</h3>
</div>
<div class="block-product-soluton container-fluid d-flex align-items-center justify-content-center" style="background: url('{{ Theme::asset()->url('images/rectangle-6111-copy-2.png') }}')">
    <h3 class="title wow fadeInUp" data-wow-delay="0.5s">Expand valuable ﬂoor space by rertiving <br> products off the ground and onto racks</h3>
</div>
<div class="block-product-soluton container-fluid d-flex align-items-center justify-content-center" style="background: url('{{ Theme::asset()->url('images/rectangle-61111-copy-3.png') }}')">
    <h3 class="title wow fadeInUp" data-wow-delay="0.5s">Protects and helps prevent <br> damage to long items</h3>
</div> -->
<?php $products = $product_solution->product_categories; ?>
<div class="slide-product-soluton text-center">
    <h3 class="title text-uppercase">Related Products</h3>
    <div class="owl-carousel owl-theme" id="product_related">
        <?php foreach($products as $product){ ?>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ $product->image }}" alt="{{$product->name}}">
                <div class="card-body">
                    <a href="{{ route('public.product_category.details', $product->slug) }}" class="btn btn-primary">{{$product->name}}</a>
                </div>
            </div>
        </div>
        <?php } ?>
        <!-- <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ Theme::asset()->url('images/rectangle-64-copy.png') }}" alt="">
                <div class="card-body">
                    <a href="#" class="btn btn-primary">ARMS</a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ Theme::asset()->url('images/rectangle-64-copy-2.png') }}" alt="">
                <div class="card-body">
                    <a href="#" class="btn btn-primary">ARMS</a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ Theme::asset()->url('images/rectangle-64-copy-22.png') }}" alt="">
                <div class="card-body">
                    <a href="#" class="btn btn-primary">ARMS</a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ Theme::asset()->url('images/rectangle-64.png') }}" alt="">
                <div class="card-body">
                    <a href="#" class="btn btn-primary">ARMS</a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ Theme::asset()->url('images/rectangle-64-copy.png') }}" alt="">
                <div class="card-body">
                    <a href="#" class="btn btn-primary">ARMS</a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ Theme::asset()->url('images/rectangle-64-copy-2.png') }}" alt="">
                <div class="card-body">
                    <a href="#" class="btn btn-primary">ARMS</a>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ Theme::asset()->url('images/rectangle-64-copy-22.png') }}" alt="">
                <div class="card-body">
                    <a href="#" class="btn btn-primary">ARMS</a>
                </div>
            </div>
        </div> -->
    </div>
</div>
</section>