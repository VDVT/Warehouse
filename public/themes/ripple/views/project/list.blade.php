<?php if(isset($projects[0])){ ?>
<div class="bg_project d-flex align-items-center" style="background: url('{{ $projects[0]->image }}')">
    <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-uppercase">recent projects
                            <span>{{ $projects[0]->name }}</span>
                        </h3>
                        <p class="desc">{{$projects[0]->description}}</p>
                        <a href="{{ route('public.project.details', $projects[0]->slug) }}" class="btn btn-warning btn-effect text-uppercase">read more</a>
                    </div>
                </div>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div>
<?php } ?>
<?php $total = $projects->total(); if($total>1){ ?>
<div class="container" id="recent_project2">
    <h3 class="title1">recent projects</h3>
    <div class="row d-flex flex-wrap">
        <?php
            for ($i=1; $i < 9; $i++) { 
                if(isset($projects[$i])){
                    $cl = ($i==1 || $i==6) ? 'col-md-8' : 'col-md-4';
                    $url = route('public.project.details', $projects[$i]->slug);
        ?>
        <div class="{{ $cl }}">
            <div class="card">
                <img class="card-img-top" src="{{ $projects[$i]->image }}" alt="{{ $projects[$i]->name }}">
                <div class="card-body">
                    <div>
                        <h3 class="card-title">{{ $projects[$i]->name }}</h3>
                        <p class="desc">{{ $projects[$i]->description }}</p>
                        <a href="{{ $url }}" class="btn btn-warning btn-effect">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <?php }} ?>
    </div>
    <div class="pagination">
        <a class="pag-left pag-btn pull-left text-uppercase <?php if($projects->currentPage()==1) echo 'disable'; ?>" href="{{ $projects->previousPageUrl() }}"><i class="fa fa-angle-left" aria-hidden="true"></i> Prev</a>
        <a class="pag-right pag-btn pull-right text-uppercase <?php if($projects->currentPage()==$projects->lastPage()) echo 'disable'; ?>" href="{{ $projects->nextPageUrl() }}">Next <i class="fa fa-angle-right" aria-hidden="true"></i></a>
    </div>
</div>
<?php } ?>
</section>
