<footer id="footer" class="footer">
    <div class="container">
        <div class="p-t-5 p-b-2 mb-2-i">
            <div class="row justify-content-between">
                <div class="col-md-6 m-b-md-3">
                    <div class="footer-title">Stay In Touch</div>
                    <div class="footer-content">
                        <form class="newsletter-form">
                            <div class="form-group">
                                <input type="text" placeholder="Enter your email address" name="email" class="form-control no-line" id="email-send-newsletter">
                            </div>
                            <div class="noti success" style="font-size:13px;color:green;padding-top:5px;"></div>
                            <div class="noti error" style="font-size:13px;color:red;padding-top:5px;"></div>
                            <button class="btn btn-outline-custom-i btn-round" id="send-newsletter" style="display: none">Send</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="footer-title">Literature</div>
                    <div class="footer-content">
                        <div class="row">
                            @foreach($list_literatures as $literature)
                                <div class="col-6 m-b-sm-3">
                                    <a target="_blank" title="{{ $literature->name }}" href="{{ $literature->file }}"><img src="{{ $literature->image }}" alt="{{ $literature->name }}" class="img-fluid"></a>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom p-y-3">
            <div class="row">
                <div class="col-md-6 m-b-sm-3">
                    <div class="footer-social">
                        <a href="{{ theme_option('facebook') }}"><i class="fab fa-facebook-f"></i></a>
                        <a href="{{ theme_option('google_plus') }}"><i class="fab fa-google-plus-g"></i></a>
                        <a href="{{ theme_option('linkedin') }}"><i class="fab fa-linkedin-in"></i></a>
                        <a href="{{ theme_option('yelp') }}"><i class="fab fa-yelp"></i></a>
                        <a class="address"><i class="fas fa-map-marker-alt m-r-1"></i>{{ theme_option('address') }}</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <ul class="footer-link">
                        <li>
                            <a href="#">Terms &amp; Conditions</a>
                        </li>
                        <li>
                            <a href="#">Shipping &amp; Return</a>
                        </li>
                        <li>
                            <a href="#">Privacy Policy</a>
                        </li>
                        <li>
                            <a href="#">FAQ</a>
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

<script type="text/javascript">
    setTimeout(function() {
        $('.newsletter-form .success').fadeOut('fast');
        $('.newsletter-form .error').fadeOut('fast');
    }, 10000);
    
    $(document).ready(function($) {

        $('#email-send-newsletter').on('input',function(e){
            let email = $(this).val();
            if(email)
                $('#send-newsletter').css("display","");
            else
                $('#send-newsletter').css("display","none");
        });

        $('#send-newsletter:enabled').click(function(event) {
            event.preventDefault();
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
                        $('.newsletter-form .success').html(data.msg);
                    }else{
                        $('.newsletter-form .error').html(data.msg);
                    }
                },
                error: function(xhr) { // if error occured
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
      background-color: #e7661f;
      color: #fff;
      z-index: 999; }
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
