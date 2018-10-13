<div class="bg_core d-flex align-items-center" style="background-image: url('{!! $core_expertise->image !!}');">
    <div class="container">
        <h2 class="title"><span>{!! $core_expertise->name !!}</span></h2>
    </div>
</div>
<div class="core1">
    <div class="container">
        <div class="row d-md-flex align-items-md-center">
            <?php if(empty($core_expertise->content_image)){ ?>
                <div class="col-md-12">
                    <div class="entry">
                        {!! $core_expertise->content !!}
                    </div>
                </div>
            <?php }else{ ?>
            <div class="col-md-7">
                <div class="entry">
                    {!! $core_expertise->content !!}
                    <!-- <h3 class="title">The Drive to Achieve Your Project’s Goals</h3>
                    <p class="desc">Our <span class="text-danger">Project Management</span> team coordinates all projects to ensure UMH’s resources are utilized properly. Working cooperatively with managers, engineers and field superintendents, their common goal is to fulfill your expectations on time and within budget. UMH’s network of installation and delivery options across North America affords our Project Management team the ability to personalize your project to meet your needs.</p>
                    <hr>
                    <br>
                    <h3 class="title">Project Management Step by Step</h3>
                    <p class="desc">From the kick off meeting, to the project closeout, our higher-order thinking staff manages the following facets of the project to make certain the final product meets customer, and UMH, standards:</p>
                    <ul class="list-unstyled">
                        <li>Kick Off Meeting</li>
                        <li>Budgeting and Scheduling</li>
                        <li>Installer and Shop Prioritizing</li>
                        <li>Delivery to Your Site</li>
                        <li>On Site Meeting with You Prior to Construction</li>
                        <li>Installation</li>
                        <li>Project Close Out</li>
                    </ul> -->
                </div>
            </div>
            <div class="col-md-5">
                <img src="{{ $core_expertise->content_image }}" alt="{{ strip_tags($core_expertise->name) }}" class="img-fluid">
            </div>
            <?php } ?>
        </div>
    </div>
</div>
</section>