<footer id="footer">
    <div class="block-contact-manager">
        <div class="container">
            <div class="row d-flex align-items-md-center">
                <div class="col-md-7">
                    <p class="desc">One of our representatives will contact you once <br> you submit a quote request form.</p>
                </div>
                <div class="col-md-5">
                    <a href="{{ route('public.page.contactaccountmanager') }}" class="btn btn-primary btn-effect btn-lg text-uppercase">Get A Quote</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="row">
                    <div class="col-md-4">
                        <h3 class="title c1 text-uppercase">Product solutions</h3>
                        <ul class="list-unstyled">
                            <?php foreach ($product_solutions as $key => $product_solution) {?>
                                <li><a href="{{ route('public.product-solution.details', $product_solution->slug) }}"><?php echo $product_solution->name; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3 class="title c1 text-uppercase">Industries we serve</h3>
                        <ul class="list-unstyled">
                            <?php foreach ($industrials as $key => $industrial) {?>
                                <li><a href="{{ route('public.industrial.details', $industrial->slug) }}"><?php echo $industrial->name; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3 class="title c1 text-uppercase">core expertise</h3>
                        <ul class="list-unstyled">
                            <?php foreach ($core_expertises as $key => $core_expertise) {?>
                                <li><a href="{{ route('public.core-expertise.details', $core_expertise->slug) }}"><?php $name = strip_tags(str_replace('<br>', ' ', $core_expertise->name)); echo $name; ?></a></li>
                            <?php } ?>
                        </ul>
                        <h3 class="title c1 text-uppercase">resources</h3>
                        <ul class="list-unstyled">
                            <li><a href="{{ route('public.literature.list') }}">Literature</a></li>
                            <li><a href="{{ route('public.post.list') }}">News</a></li>
                            <li><a href="{{ route('public.page.career') }}">Career Opportunities</a></li>
                            <li><a href="{{ route('public.page.donation') }}">Donation Request</a></li>
                            <li><a href="{{ route('public.page.project-completion') }}">Project Completion</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row footer-logo">
                    <div class="col-md-3">
                        <a target="_blank" href="{{ theme_option('logo_footer_link_1') }}"><img class="img-thumbnail" src="{{ theme_option('logo_footer_1') }}"></a>
                    </div>
                    <div class="col-md-3">
                        <a target="_blank" href="{{ theme_option('logo_footer_link_2') }}"><img class="img-thumbnail" src="{{ theme_option('logo_footer_2') }}"></a>
                    </div>
                    <div class="col-md-3">
                        <a target="_blank" href="{{ theme_option('logo_footer_link_3') }}"><img class="img-thumbnail" src="{{ theme_option('logo_footer_3') }}"></a>
                    </div>
                    <div class="col-md-3">
                        <a target="_blank" href="{{ theme_option('logo_footer_link_4') }}"><img class="img-thumbnail" src="{{ theme_option('logo_footer_4') }}"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="flex">
                    <div>
                        <h3 class="title c2 text-uppercase">stay in touch</h3>
                        <form class="newsletter-form">
                            <div class="form-group">
                                <input type="email" class="form-control" id="newsletter_email" placeholder="Enter your email address">
                                <div class="noti success" style="font-size:13px;color:green;padding-top:5px;"></div>
                                <div class="noti error" style="font-size:13px;color:red;padding-top:5px;"></div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-effect" id="send-newsletter">SEND</button>
                        </form>
                    </div>
                </div>
                <h3 class="title c3 text-uppercase">literature</h3>
                <div class="row">
                    <?php foreach ($list_literatures as $literature) { ?>
                    <div class="col-md-4 col-4 text-center">
                        <a target="_blank" title="{{ $literature->name }}" href="{{ $literature->file }}"><img src="{{ $literature->image }}" alt="{{ $literature->name }}" class="img-thumbnail"></a>
                    </div>
                    <?php } ?>
                    <!-- <div class="col-md-4 col-4 text-center">
                        <a href="#"><img src="http://tinyprovider.us/umh/img/rectangle-17-copy.png" alt="" class="img-thumbnail"></a>
                    </div>
                    <div class="col-md-4 col-4 text-center">
                        <a href="#"><img src="http://tinyprovider.us/umh/img/rectangle-17-copy-2.png" alt="" class="img-thumbnail"></a>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="menu-bottom">
            <div class="row">
                <div class="col-md-5">
                    <div class="social">
                         <a target="_blank" href="{{ theme_option('linkedin') }}"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                         <a target="_blank" href="{{ theme_option('twitter') }}"><i class="fa fa-twitter" aria-hidden="true"></i></i></a>
                        <a target="_blank" href="{{ theme_option('facebook') }}"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                         <a target="_blank" href="{{ theme_option('instagram') }}"><i class="fa fa-instagram" aria-hidden="true"></i></i></a>
                        <a target="_blank" href="{{ theme_option('google_plus') }}"><i class="fa fa-google-plus" aria-hidden="true"></i></i></a>
                        <a target="_blank" href="{{ theme_option('yelp') }}"><i class="fa fa-yelp" aria-hidden="true"></i></i></a>
                    </div>
                    <span class="location">{{ theme_option('address') }}</span>
                </div>
                <div class="col-md-7">
                    <ul class="nav float-right">
                        <li class="nav-item">
                            <a target="_blank" class="nav-link" href="{{ Theme::asset()->url('documents/Terms_Conditions.pdf') }}">Terms & Conditions</a>
                        </li>
                        <li class="nav-item">
                            <a target="_blank" class="nav-link" href="{{ Theme::asset()->url('documents/Shipping_Return.pdf') }}">Shipping & Return</a>
                        </li>

                             <li class="nav-item">
                            <a target="_blank" class="nav-link" href="{{ Theme::asset()->url('documents/documents/Warranty.pdf') }}">Warranty</a>
                        </li>
                             
                            <li class="nav-item">
                            <a class="nav-link" href="#">Privacy Policy</a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="{{ route('public.page.faq') }}">FAQ</a>
                        </li> -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="go-up" style="right: -60px"><i class="fa fa-arrow-up" aria-hidden="true"></i></div>

<!-- JS Library-->
{!! Theme::footer() !!}

</body>
</html>
