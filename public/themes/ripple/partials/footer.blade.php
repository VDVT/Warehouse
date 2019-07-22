<footer id="footer">
    <div class="block-contact-manager">
        <div class="container">
            <div class="row d-flex align-items-md-center">
                <div class="col-md-7">
                    <p class="desc">Our Manager will contact you to learn more about your <br> needs and provides you with a free quote</p>
                </div>
                <div class="col-md-5">
                    <a href="{{ route('public.page.contactaccountmanager') }}" class="btn btn-primary btn-effect btn-lg text-uppercase">GET A QUOTE</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="row">
                    <div class="col-md-4">
                        <h3 class="title c1 text-uppercase">products</h3>
                        <ul class="list-unstyled">
                            <?php foreach ($product_category_items as $key => $product_category) {?>
                                <li><a href="{{ route('public.product_category.details', $product_category->slug) }}"><?php echo $product_category->name; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3 class="title c1 text-uppercase">Customer services</h3>
                        <ul class="list-unstyled">
                            <li><a href="{{ route('public.services.customer-info') }}">New Customer Form</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3 class="title c1 text-uppercase">resources</h3>
                        <ul class="list-unstyled">
                            <li><a href="{{ route('public.page.aboutus') }}">About Us</a></li>
                            <li><a href="{{ route('public.literature.list') }}">Literature</a></li>
                            <li><a href="{{ route('public.gallery.index') }}">Gallery</a></li>
                            <li><a href="{{ route('public.post.list') }}">News</a></li>
                            <li><a href="{{ route('public.page.contactus') }}">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="flex">
                    <div>
                        <h3 class="title c2 text-uppercase">stay in touch</h3>
                        <form class="newsletter-form">
                            <div class="form-group">
                                <input type="email" placeholder="Enter your email address" name="email" class="form-control no-line" id="email-send-newsletter">
                            </div>
                            <div class="noti success" style="font-size:13px;color:green;padding-top:5px;"></div>
                            <div class="noti error" style="font-size:13px;color:red;padding-top:5px;"></div>
                            <button type="submit" class="btn btn-primary btn-effect" id="send-newsletter" style="display: none">SEND</button>
                        </form>
                    </div>
                </div>
                <h3 class="title c3 text-uppercase">literature</h3>
                <div class="row">
                    @foreach($list_literatures as $literature)
                        <div class="col-md-4 col-4 text-center">
                            <a target="_blank" title="{{ $literature->name }}" href="{{ $literature->file }}">
                                <img src="{{ $literature->image }}" alt="{{ $literature->name }}" class="img-fluid">
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="menu-bottom">
            <div class="row">
                <div class="col-md-6">
                    <div class="social">
                    </div>
                    <span class="location">{{ theme_option('address') }}</span>
                </div>
                <div class="col-md-6">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="pdf/Terms_Conditions.pdf">Terms & Conditions</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pdf/Shipping_Return.pdf">Shipping & Return</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Privacy Policy</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="faq.php">FAQ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="go-up" style="right: -60px"><i class="fa fa-arrow-up" aria-hidden="true"></i></div>

<!-- JS Library-->
{!! Theme::footer() !!}
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.12/js/lightgallery-all.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>

<script type="text/javascript">
    $(document).ready(function($) {
        $('.newsletter-form .success').fadeOut('fast');
        $('.newsletter-form .error').fadeOut('fast');

        $('#email-send-newsletter').on('input',function(e){
            let email = $(this).val();
            if(email)
                $('#send-newsletter').css("display","");
            else
                $('#send-newsletter').css("display","none");
        });

        $('#send-newsletter:enabled').click(function(event) {
            event.preventDefault();
            $('.newsletter-form .success').fadeOut('fast');
            $('.newsletter-form .error').fadeOut('fast');
            const self = this;
            const el = $(self);
            beginLoadingBtn(self, false);
            $('.newsletter-form .noti').html('');

            $.ajax({
                url : "/newsletter-send",
                type : "post",
                data : {
                    _token : _token,
                    email : $("#email-send-newsletter").val()
                },
                success : function (data){
                    if(data.status){
                        $('#email-send-newsletter').val('');
                        $('#send-newsletter').css("display","none");
                        $('.newsletter-form .success').fadeIn('fast');
                        $('.newsletter-form .success').html(data.msg);
                    }else{
                        $('.newsletter-form .error').fadeIn('fast');
                        $('.newsletter-form .error').html(data.msg);
                    }
                },
                error: function(xhr) { // if error occured
                    $('.newsletter-form .error').fadeIn('fast');
                    $('.newsletter-form .error').html('Error! Try again or contact IT support.');
                },
                complete: function() {
                    endLoadingBtn(self, 'SEND', false);
                }
            });
        });
    });
</script>
<style type="text/css">
    .go-up {
      position: fixed;
      width: 40px;
      height: 40px;
      line-height: 40px;
      font-size: 17px;
      right: -60px;
      bottom: 20px;
      cursor: pointer;
      text-align: center;
      -moz-transition: all 0.2s linear;
      -webkit-transition: all 0.2s linear;
      -o-transition: all 0.2s linear;
      -ms-transition: all 0.2s linear;
      transition: all 0.2s linear;
      z-index: 998;
      -webkit-border-radius: 2px;
      -moz-border-radius: 2px;
      border-radius: 2px;
      background-color: #bc3033;
      color: #fff;
      z-index: 999; }
      
    .navigation>ul>li.logo a {
        display: block;
        padding: 0;
        border-right: none;
    }
</style>
<script>
    $('.close-alert').on('click', function(event) {
        event.preventDefault();
        $(this).closest('#close-alert').hide("slow");
    });
</script>
</main>
</body>
</html>
