<div class="page_faq">
    <div class="bock_1 d-flex align-items-center" style="background: url('{{ Theme::asset()->url('images/faq/rectangle-2.png') }}');">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center text-uppercase">
                    <h1 class="title text-uppercase text-center">Frequently Asked Questions</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="bock_2 d-flex align-items-center">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col col-lg-8">
                    <div class="items items-faq">

                        <?php foreach ($faqs as $key => $faq) { ?>
                            <div class="item item-1 <?php if($key==0) echo 'active'; ?>">
                                <div class="item-header">
                                    <span class="question">{{ $faq->name }}</span>
                                    <div class="icon pull-right">
                                        <?php if($key==0){ ?>
                                            <i class="fa fa-times" aria-hidden="true"></i>
                                        <?php }else{ ?>
                                            <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="item-content entry">
                                    {!! $faq->content !!}
                                </div>
                            </div>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bock_3 d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <p>Can’t find what you’re looking for ?</p>
                    <a href="{{ route('public.page.contactus') }}" class="btn btn-warning btn-effect text-uppercase">Contact Us</a>
                </div>
            </div>
        </div>
    </div>      
</div>
</section>