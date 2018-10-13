<div class="bg_indus d-flex align-items-end" style="background: url('{{ ( empty($industrial->image) ) ? Theme::asset()->url('images/rectangle-75.png') : $industrial->image }}');">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">
                            Industries we serve
                            <span>{{ $industrial->name }}</span>
                        </h3>
                        <p class="desc">{{ $industrial->content }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="industry_link">
    <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-md-10">
                <h3 class="title">key solutions</h3>
                <?php $product_solutions = $industrial->product_solutions; ?>
                <ul class="nav d-flex flex-wrap">
                    <?php foreach ($product_solutions as $key => $product_solution) {?>
                    <li class="nav-item col-md-4">
                        <a class="nav-link" href="{{ route('public.product-solution.details', $product_solution->slug) }}">{{$product_solution->name}}</a>
                    </li>
                    <?php } ?>
                </ul>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div>
<!-- <div class="block_1">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-md-5">
                <?php $testimonial = $industrial->testimonial; ?>
                <div class="media">
                    <img class="mr-3" src="{{ $testimonial->image }}" alt="{{$testimonial->name}}">
                    <div class="media-body">
                        <h5 class="title">
                            <span class="name">{{$testimonial->name}}</span>
                            <div class="position">{{ $testimonial->position }}</div>
                        </h5>
                        <p class="desc">{{ $testimonial->content }}</p>
                    </div>
                </div>
            </div>
            <div class="col"></div>
            <div class="col-md-5">
                
                <div class="owl-carousel owl-theme" id="slide_author">
                    <?php foreach ($industrial_others as $other) {?>
                    <div class="item">
                        <figure>
                            <div><img src="{{ $other->icon }}" alt="{{ $other->name }}"></div>
                            <figcaption>{{ $other->name }}</figcaption>
                        </figure>
                    </div>
                    <?php } ?>
                </div>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div> -->
<div class="recent_project text-center">
    <?php $projects = $industrial->projects; ?>
    <h3 class="title text-uppercase">Recent Projects</h3>
    <div class="owl-carousel owl-theme" id="recent_project1">
        <?php foreach ($projects as $project) { ?>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ $project->image }}" alt="{{ $project->name }}">
                <div class="card-body d-flex align-items-center justify-content-center">
                    <div>
                        <h3 class="title1 text-uppercase">{{ $project->name }}</h3>
                        <p class="desc">{{ trunc($project->description, 20) }}</p>
                        <a href="{{ route('public.project.details', $project->slug) }}" class="btn btn-warning btn-effect">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>
</section>