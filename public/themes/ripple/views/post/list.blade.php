<?php if(isset($posts[0])){ ?>
<div class="bg_blog d-flex align-items-center list_blog banner_blog" style="background: url('{{ $posts[0]->banner }}')">
    <div class="container">
        <div class="row d-md-flex justify-content-md-end">
            <div class="col-md-6">
                <div class="card d-flex align-items-center align-items-stretch">
                    <img src="{{ $posts[0]->image }}" alt="{{ $posts[0]->name }}" class="card-img-top img-fluid img-fit">
                    <div class="card-body d-flex align-items-center">
                        <div>
                            <!-- <div class="date">
                                <div>
                                    <span>{{ date("M",strtotime($posts[0]->created_at)) }}</span>
                                    {{ date("d",strtotime($posts[0]->created_at)) }}
                                </div>
                            </div> -->
                            <h3 class="card-title text-uppercase">{{ $posts[0]->name }}</h3>
                            <p class="card-text">{{ $posts[0]->description }}</p>
                            <a href="{{ route('public.post.details', $posts[0]->slug) }}" class="card-link">read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>
<?php if(count($posts) > 1){ ?>
<div class="container list_blog">
    <div class="row">
        <?php 
        for ($i=1; $i < 7; $i++) {
             if(isset($posts[$i])){
        ?>
        <div class="col-md-6">
            <div class="card d-flex align-items-center align-items-stretch">
                <img src="{{ $posts[$i]->image }}" alt="{{ $posts[$i]->name }}" class="card-img-top img-fluid img-fit">
                <div class="card-body d-flex align-items-center">
                    <div>
                        <!-- <div class="date">
                            <div>
                                <span>{{ date("M",strtotime($posts[$i]->created_at)) }}</span>
                                {{ date("d",strtotime($posts[$i]->created_at)) }}
                            </div>
                        </div> -->
                        <h3 class="card-title text-uppercase">{{ $posts[$i]->name }}</h3>
                        <p class="card-text">{{ trunc($posts[$i]->description, 16) }}</p>
                        <a href="{{ route('public.post.details', $posts[$i]->slug) }}" class="card-link">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <?php }} ?>
    </div>
    <div class="pagination">
        <a class="pag-left pag-btn pull-left text-uppercase <?php if($posts->currentPage()==1) echo 'disable'; ?>" href="{{ $posts->previousPageUrl() }}"><i class="fa fa-angle-left" aria-hidden="true"></i> Prev</a>
        <a class="pag-right pag-btn pull-right text-uppercase <?php if($posts->currentPage()==$posts->lastPage()) echo 'disable'; ?>" href="{{ $posts->nextPageUrl() }}">Next <i class="fa fa-angle-right" aria-hidden="true"></i></a>
    </div>
</div>
<?php } ?>
</section>