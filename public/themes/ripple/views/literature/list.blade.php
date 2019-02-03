<?php 
    $activated = false;
?>
<style type="text/css">
    .item-shortdes {
        font-size: 16px;
        font-family: "FranklinGothic Book";
        text-align: center !important;
    }
</style>
<div class="page_literature">
    <div class="bock_1 d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center text-uppercase">
                    <h1 class="title text-uppercase text-center">literature</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clearfix" style="background-color: #f7f7f7;" >
     <div class="container">
        <div class="p-y-6">
            <div class="nav-left">
                <ul class="nav nav-pills-custom nav-small nav-fill with-icon" id="myTab" role="tablist">
                    @foreach($tabs as $key => $tab)
                        @if($tab->literatures->isNotEmpty())
                            <li class="nav-item">
                                <a class="nav-link rounded {{ $activated == false ? 'active' : '' }}" id="tab-{{ $tab->id }}-tab" data-toggle="tab" href="#tab-{{ $tab->id }}" role="tab" aria-controls="tab-{{ $tab->id }}" aria-selected="true">{{ $tab->name }}</a>
                            </li>
                            @php
                                $activated = true;
                            @endphp
                        @endif
                    @endforeach

                    @php
                        $activated = false;
                    @endphp
                </ul>
                <div class="tab-content pl-xl-4" id="pills-tabContent">
                    @foreach($tabs as $key => $tab)
                        @if($tab->literatures->isNotEmpty())
                            <div class="tab-pane fade {{ $activated == false ? 'show active' : '' }}" id="tab-{{ $tab->id }}" role="tabpanel" aria-labelledby="tab-{{ $tab->id }}-tab">
                                <div class="row product-wrapper lht-products">
                                    @foreach($tab->literatures as $literature)
                                        <div class="col-md-4 col-sm-6">
                                            <div class="product-item item-box">
                                                <div class="box-image">
                                                    <a href="#">
                                                        <img src="{{ $literature->image }}" alt="{{ $literature->name }}" width="100%">
                                                    </a>
                                                </div>
                                                <div class="product-title">{{ $literature->name }}</div>
                                                <div class="item-shortdes">
                                                    <p>{{ $literature->description }}</p>
                                                </div>
                                                <div class="product-backdrop">
                                                    <a target="_blank" href="{{ $literature->file }}" class="btn btn-outline-custom-i btn-round">DOWNLOAD <i class="fa fa-download"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            @php
                                $activated = true;
                            @endphp
                        @endif
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bg-white">
    <div class="container">
        <div class="text-center p-y-5">
            <div class="h4 m-b-2 text-muted1">Not sure what you need ? <span class="text-custom">We're here to help!</span></div>
            <a href="{{ route('public.page.contactus') }}" class="btn btn-outline-custom btn-round">Contact Us</a>
        </div>
    </div>
</div>