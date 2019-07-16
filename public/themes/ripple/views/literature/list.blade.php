<!-- Add content page template list literature -->

<!-- End add template list literature -->
<style type="text/css">
    .container {
        max-width: 1200px;
        width: 100%;
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
    <div class="bock_2 d-flex align-items-center">
        <div class="container">
            <div class="row literatures">
                <?php foreach ($literatures as $key => $literature) { ?>
                <div class="col-md-3 col-sm-6 item">
                    <div class="item-box">
                        <div class="box-image">
                            <a href="{{ $literature->file }}">
                                <img src="{{ $literature->image }}" alt="{{ $literature->name }}" width="100%">
                            </a>
                        </div>
                        <div class="box-content text-center">
                            <div class="item-title text-uppercase">
                                <p>{{ $literature->name }}</p>
                            </div>
                            <div class="item-shortdes">
                                <p>{{ $literature->description }}</p>
                            </div>
                            <div class="item-download">
                                <a href="{{ $literature->file }}"> <i class="fa fa-download" aria-hidden="true"></i>DOWNLOAD</a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>     
</div>