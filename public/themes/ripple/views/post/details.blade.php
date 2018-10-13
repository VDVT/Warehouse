<?php $source = Theme::asset()->url('images'); ?>
<div class="bg_detailblog d-flex align-items-end" style="background: url('{{ $post->banner }}')">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="d-flex align-items-center">
                    <div class="dates">
                        <span>{{ date("M",strtotime($post->created_at)) }}</span>
                        {{ date("d",strtotime($post->created_at)) }}
                    </div>
                    <h3 class="title">{{ $post->name }}</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="detail_blog port_logistics">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div id="share-buttons">
                    <img src="{{ Theme::asset()->url('images') }}/sharepost.png" alt="Share on social media" />
                    <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url={{ URL::current() }}" target="_blank">
                        <img src="{{ Theme::asset()->url('images') }}/linkedin.png" alt="LinkedIn" />
                    </a>
                    <a href="https://twitter.com/share?url={{ URL::current() }}&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank">
                        <img src="{{ Theme::asset()->url('images') }}/twitter.png" alt="Twitter" />
                    </a>
                    <a href="http://www.facebook.com/sharer.php?u={{ URL::current() }}" target="_blank">
                        <img src="{{ Theme::asset()->url('images') }}/facebook.png" alt="Facebook" />
                    </a>
                    <a href="https://plus.google.com/share?url={{ URL::current() }}" target="_blank">
                        <img src="{{ Theme::asset()->url('images') }}/google.png" alt="Google" />
                    </a>
                </div>
                <div class="entry">
                    <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute est irure dolor in reprehenderit in vol uptate velit esse cillum dolore eu fugiat nulla pariatur.</p>

                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspici atis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia.</p>

                    <p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p> -->
                    {!! $post->content !!}
                </div>
            </div>
            <div class="col"></div>
            <div class="col-md-3">
                <h3 class="title text-uppercase">tags</h3>
                <?php foreach ($post->tags as $key => $tag) { ?>
                    <!-- <a href="{{ route('public.tag', $tag->slug) }}" class="tag">{{ $tag->name }}</a> -->
                    <span class="tag">{{ $tag->name }}</span>
                <?php } ?>
                <!-- <a href="#" class="tag">building</a>
                <a href="#" class="tag">constructions</a>
                <a href="#" class="tag">news</a>
                <a href="#" class="tag">modules</a>
                <a href="#" class="tag">rack</a>
                <a href="#" class="tag">wheels</a>
                <a href="#" class="tag">roll systems</a>
                <a href="#" class="tag">solution</a>
                <a href="#" class="tag">performent</a> -->
            </div>
        </div>
    </div>
</div>
</section>