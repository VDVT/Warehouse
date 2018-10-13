<?php $source = Theme::asset()->url('images'); ?>
<?php
    $name = $project->name;
    $gallery = json_decode($project->gallery);
    if(!empty($gallery)){
?>
<div class="slider-for">
    <?php foreach ($gallery as $key => $gfor) {
        echo '<div class="item-for"><img src="'.$gfor->img.'" alt="'.$name.'" class="img-fluid"></div>';
    } ?>
    
    <!-- <div class="item-for"><img src="{{ $source }}/details_project/rectangle-15.png" alt="" class="img-fluid"></div>
    <div class="item-for"><img src="{{ $source }}/details_project/rectangle-15-copy.png" alt="" class="img-fluid"></div>
    <div class="item-for"><img src="{{ $source }}/details_project/rectangle-15-copy-2.png" alt="" class="img-fluid"></div>
    <div class="item-for"><img src="{{ $source }}/details_project/rectangle-15-copy-3.png" alt="" class="img-fluid"></div> -->
</div>
<div class="slider-nav">
    <?php foreach ($gallery as $key => $gnav) {
        echo '<div class="item-nav"><img src="'.$gnav->img.'" alt="'.$name.'" class="img-fluid"></div>';
    } ?>
    <!-- <div class="item-nav"><img src="{{ $source }}/details_project/rectangle-12.png" alt="" class="img-fluid"></div>
    <div class="item-nav"><img src="{{ $source }}/details_project/rectangle-15.png" alt="" class="img-fluid"></div>
    <div class="item-nav"><img src="{{ $source }}/details_project/rectangle-15-copy.png" alt="" class="img-fluid"></div>
    <div class="item-nav"><img src="{{ $source }}/details_project/rectangle-15-copy-2.png" alt="" class="img-fluid"></div>
    <div class="item-nav"><img src="{{ $source }}/details_project/rectangle-15-copy-3.png" alt="" class="img-fluid"></div> -->
</div>
<?php } ?>
<div class="port_logistics">
    <div class="container">
        <h3 class="title">{{$name}}</h3>
        <div class="owl-carousel owl-theme" id="logisticsPPP">
            <div class="item">
                <div class="row">
                    <div class="col-md-8">
                        <div class="entry">{!! $project->content !!}</div>
                    </div>
                    <div class="col"></div>
                    <div class="col-md-3">
                        <ul class="list-unstyled">
                            <li><span>Category:</span> {{$project->category}}</li>
                            <li><span>Client:</span> {{$project->client}}</li>
                            <li><span>Date:</span> {{ date("jS M, Y", strtotime($project->date)) }}</li>
                            <li><span>Link:</span> {{$project->link}}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- <div class="item">
                <div class="row">
                    <div class="col-md-8">
                        <p class="desc">Sed ut perspiciatis unde omnis iste natus error sit voluptatems accusantium doloremqu laudantiums ut, totams se aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae duis autems vell eums iriure dolors in hendrerit saepe eveniet in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at seds eros sed et accumsan et iusto odio dignissim. Temporibus autem quibusdam et aut officiis debitis autrerum sed necessitatibus saepe evenit uts et ut voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic teneturs a sapiente delectus. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illumnulla facilisis.</p>
                    </div>
                    <div class="col"></div>
                    <div class="col-md-3">
                        <ul class="list-unstyled">
                            <li><span>Category:</span> Chemical</li>
                            <li><span>Client:</span> Envato Pvt Ltd</li>
                            <li><span>Date:</span> 21st Aug, 2016</li>
                            <li><span>Link:</span> www.steelthemes.com</li>
                        </ul>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
</div>
<?php if(!empty($other_projects)){ ?>
<div class="recent_project text-center">
    <h3 class="title text-uppercase">recent projects</h3>
    <div class="owl-carousel owl-theme" id="recent_project1">
        <?php foreach ($other_projects as $key => $other_project) {
            # code...
        ?>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ $other_project->image }}" alt="{{ $other_project->name }}">
                <div class="card-body d-flex align-items-center justify-content-center">
                    <div>
                        <h3 class="title1 text-uppercase">{{ $other_project->name }}</h3>
                        <p class="desc">{{ trunc($other_project->description, 20) }}</p>
                        <a href="{{ route('public.project.details', $other_project->slug) }}" class="btn btn-warning btn-effect">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
        <!-- <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ $source }}/shutterstock-536227798-supersize.png" alt="">
                <div class="card-body d-flex align-items-center justify-content-center">
                    <div>
                        <h3 class="title1 text-uppercase">young's market company</h3>
                        <p class="desc">Cards are built with as little markup and styles as possible, but still manage to deliver a ton of control and customization.</p>
                        <a href="#" class="btn btn-warning btn-effect">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="card">
                <img class="card-img-top" src="{{ $source }}/rectangle-78-copy.png" alt="">
                <div class="card-body d-flex align-items-center justify-content-center">
                    <div>
                        <h3 class="title1 text-uppercase">young's market company</h3>
                        <p class="desc">Cards are built with as little markup and styles as possible, but still manage to deliver a ton of control and customization.</p>
                        <a href="#" class="btn btn-warning btn-effect">read more</a>
                    </div>
                </div>
            </div>
        </div> -->
    </div>
    <!-- <div class="row d-flex align-items-stretch" style="display: none !important;">
        <div class="col-md-4 col-12">
            <div class="card">
                <img class="card-img-top" src="{{ $source }}/rectangle-78.png" alt="">
                <div class="card-body d-flex align-items-center justify-content-center">
                    <div>
                        <h3 class="title1 text-uppercase">young's market company</h3>
                        <p class="desc">Cards are built with as little markup and styles as possible, but still manage to deliver a ton of control and customization.</p>
                        <a href="#" class="btn btn-warning btn-effect">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-12">
            <div class="card">
                <img class="card-img-top" src="{{ $source }}/shutterstock-536227798-supersize.png" alt="">
                <div class="card-body d-flex align-items-center justify-content-center">
                    <div>
                        <h3 class="title1 text-uppercase">young's market company</h3>
                        <p class="desc">Cards are built with as little markup and styles as possible, but still manage to deliver a ton of control and customization.</p>
                        <a href="#" class="btn btn-warning btn-effect">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-12">
            <div class="card">
                <img class="card-img-top" src="{{ $source }}/rectangle-78-copy.png" alt="">
                <div class="card-body d-flex align-items-center justify-content-center">
                    <div>
                        <h3 class="title1 text-uppercase">young's market company</h3>
                        <p class="desc">Cards are built with as little markup and styles as possible, but still manage to deliver a ton of control and customization.</p>
                        <a href="#" class="btn btn-warning btn-effect">read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
</div>
<?php } ?>
</section>