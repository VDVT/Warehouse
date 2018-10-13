<?php $source = Theme::asset()->url('images'); ?>
<div class="donation" style="padding-bottom: 0">
    <div class="block-1 d-flex align-items-center" style="background: url('{{ $source  }}/donation/rectangle-1.jpg')">
        <div class="overlight"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="title text-uppercase text-center">Donation Request Guidelines</h1>
                    <p class="description">The communities we serve are very important to us here at United Material Handling, INC. We are frequently asked to provide donations for community events. Because of the volume of requests, we have developed a few guidelines to ensure we are able to help as many organizations as possible.</p>
                    <a href="{{ route('public.page.donationform') }}" class="btn btn-warning btn-effect text-uppercase">Donation Request Form</a>
                    <p class="description" style="margin-top: 20px;">If your request meets each of the guidelines below and is approved, we will contact you via email/phone number you’ve provided on the donation request form.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="block-2">
        <div class="container">
            <div class="box-1">
                <div class="item item-1">
                    <img src="{{ $source }}/donation/1.png">
                    <h3 class="title text-uppercase">Fill out form</h3>
                    <span class="des">All donation requests must be submitted in writing by filling out our donation request form. We cannot accept requests via telephone.
(NOTE: Due to the number of requests we receive, we cannot guarantee that submitting a request will result in a donation.)</span>
                </div>
                <div class="item item-2">
                    <img src="{{ $source }}/donation/2.png">
                    <h3 class="title text-uppercase">NON-PROFIT</h3>
                    <span class="des">Organizations must be non-profit, including schools and churches, and be able to provide a tax exemption number or 501c3.</span>
                </div>
                <div class="item item-3">
                    <img src="{{ $source }}/donation/3.png">
                    <h3 class="title text-uppercase">30 days in advance</h3>
                    <span class="des">All requests must be received a minimum of 30 days in advance of the event date.</span>
                </div>
                <div class="item item-4">
                    <img src="{{ $source }}/donation/4.png">
                    <h3 class="title text-uppercase">ONE TIME PER YEAR</h3>
                    <span class="des">Each organization will be granted a maximum of one request per calendar year.</span>
                </div>
                <div class="item item-5">
                    <img src="{{ $source }}/donation/5.png">
                    <h3 class="title text-uppercase">NO MONETARY DONATIONS</h3>
                    <span class="des">Requests for monetary donations cannot be accepted.</span>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
</section>