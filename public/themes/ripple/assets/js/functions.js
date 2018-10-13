window.onload = function() {
    $('.form-group .form-control').on('focus blur', function (e) {
        $(this).parents('.form-group').toggleClass('active', (e.type === 'focus' || this.value.length > 0));
    }).trigger('blur');
    if($(window).width() >= 992){
        $('#content-main').css('margin-bottom', $('#footer').outerHeight());
    }
};
$('.count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 4000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});
$(document).ready(function($) {
    $('#navbarSupportedContent > ul > li.nav-item.dropdown > .nav-link').on('click', function(event) {
        event.preventDefault();
    });
    $('#navbarSupportedContent .dropdown-menu .nav-link').hover(function() {
        var img = $(this).attr('data');
        $(this).closest('.box_mega').find('.img-fluid').attr('src', img);


        // console.log($(this).closest('.box_mega').find('.img-fluid').attr('src'));
    });
});
$('#slide_agents').owlCarousel({
    loop:false,
    margin:60,
    nav:false,
    autoplay:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
});

const product_related = $('#product_related').find('.item').length;
$('#product_related').owlCarousel({
    // center:true,
    loop:(product_related > 4),
    margin:0,
    nav:true,
    dots:false,
    autoplay:false,
    navText:[
        '<span><img src="'+assert.image+'/images/prev1.png" alt=""></span>',
        '<span><img src="'+assert.image+'/images/next1.png" alt=""></span>'
    ],
    responsive:{
        0:{
            items:2
        },
        600:{
            items:3
        },
        1000:{
            items:4
        }
    }
});

$('#slide_author').owlCarousel({
    center: false,
    loop:true,
    margin:30,
    nav:true,
    dots:false,
    autoplay:false,
    navText:[
        '<span><img src="'+assert.image+'/images/prev1.png" alt=""></span>',
        '<span><img src="'+assert.image+'/images/next1.png" alt=""></span>'
    ],
    responsive:{
        0:{
            items:2
        },
        600:{
            items:3
        },
        1000:{
            items:3
        }
    }
});

$('#recent_project1').owlCarousel({
    center: true,
    loop:true,
    margin:0,
    nav:true,
    dots:false,
    autoplay:true,
    responsive:{
        0:{
            items:1,
            nav:false,
            dots:true
        },
        600:{
            items:3,
            dots:false,nav:false,
        },
        1000:{
            items:3,
            dots:false,nav:false,
            
        }
    }
});
$('#logistics').owlCarousel({
    center: true,
    loop:false,
    margin:0,
    nav:true,
    dots:false,
    autoplay:true,
    navText:[
        '<span class="text-uppercase"><img src="'+assert.image+'/images/left1.png"> prev</span>',
        '<span class="text-uppercase">next <img src="'+assert.image+'/images/right1.png"></span>'
    ],
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
});
$('.owl-carousel').owlCarousel({
    items: 1,
    nav:true,
    dots:false,
    navText:[
        '<span><img src="'+assert.image+'/images/right-copy-4.png" alt=""></span>',
        '<span><img src="'+assert.image+'/images/right-copy-5.png" alt=""></span>'
    ],
});
var owl = $(".owl-carousel");
owl.on('changed.owl.carousel',function(property){
    var current = property.item.index;
    var data = $(property.target).find(".owl-item").eq(current).find(".content-strength").attr('data');
    $('.bg_about_us_4').attr('style', "background: url('"+data+"')");
});
$('.slider-for').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    fade: true,
    asNavFor: '.slider-nav'
});
$('.slider-nav').slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: false,
    centerMode: false,
    focusOnSelect: true,
    responsive: [
        {
            breakpoint: 768,
            settings: {
                centerMode: false
            }
        },
        {
            breakpoint: 480,
            settings: {
                centerMode: false
            }
        }
    ]
});
//detail product
$('.page_product_detail .btn-more-opt').click(function(event) {
    if($('.page_product_detail .more-option').hasClass('d-none')){
        $('.page_product_detail .more-option').removeClass('d-none');
        $('.page_product_detail .btn-more-opt i').removeClass('fa-angle-down');
        $('.page_product_detail .btn-more-opt i').addClass('fa-angle-up');
    }else{
        $('.page_product_detail .more-option').addClass('d-none');
        $('.page_product_detail .btn-more-opt i').removeClass('fa-angle-up');
        $('.page_product_detail .btn-more-opt i').addClass('fa-angle-down');
    }
});
$('.page_product_detail .content-product .form-product .part-type .item').click(function(event) {
    $('.page_product_detail .content-product .form-product .part-type .item').removeClass('choose');
    if($(this).hasClass('choose')){
        $(this).removeClass('choose');
    }else{
        $(this).addClass('choose');
    }
});
//end detail product
//faq
$('.items-faq .item-header .icon').click(function(event) {
    $(this).parents('.item').find('.item-content').toggle('slow');
    if($(this).parents('.item').hasClass('active')){
        $(this).find('.fa').removeClass('fa-times');
        $(this).find('.fa').addClass('fa-chevron-down');
        $(this).parents('.item').removeClass('active');
    }else{
        $(this).find('.fa').addClass('fa-times');
        $(this).find('.fa').removeClass('fa-chevron-down');
        $(this).parents('.item').addClass('active');
    }
});
//end faq
//career
$('.bg_career_3 .box-option li').hover(function() {
    var img = $(this).attr('data');
    $('.bg_career_3 img').attr('src', img);
});
$('.bg_career_4 .box .title').click(function(event) {
    if($(this).parents('.box').hasClass('active')){
        $(this).parents('.box').removeClass('active');
    }else{
        $(this).parents('.box').addClass('active');
    }
});
//end career
var stickyToggle = function(sticky, stickyWrapper, scrollElement) {
    var stickyHeight = sticky.outerHeight();
    var stickyTop = stickyWrapper.offset().top;
    if (scrollElement.scrollTop() >= stickyTop){
        stickyWrapper.height(stickyHeight);
        sticky.addClass("is-sticky");
    }
    else{
        sticky.removeClass("is-sticky");
        stickyWrapper.height('auto');
    }
};

// Find all data-toggle="sticky-onscroll" elements
$('[data-toggle="sticky-onscroll"]').each(function() {
    var sticky = $(this);
    var stickyWrapper = $('<div>').addClass('sticky-wrapper'); // insert hidden element to maintain actual top offset on page
    sticky.before(stickyWrapper);
    sticky.addClass('sticky');

    // Scroll & resize events
    $(window).on('scroll.sticky-onscroll resize.sticky-onscroll', function() {
        stickyToggle(sticky, stickyWrapper, $(this));
    });

    // On page load
    stickyToggle(sticky, stickyWrapper, $(window));
});

$(window).scroll(function(e){

});

//Scroll Back-Top
$(".go-up").click(function () {
    var $value = $("html,body");
    $value.animate({scrollTop: 0}, 500);
    return false;
});

$(window).scroll(function(e){
    if ($(this).scrollTop() > 100) {
        $(".go-up").css("right", "20px");
    } else {
        $(".go-up").css("right", "-60px");
    }
});

$('body').on('mouseenter mouseleave', '.dropdown',function(e){
    var _d = $(e.target).closest('.dropdown');
    _d.addClass('show');
    setTimeout(function(){
        _d[_d.is(':hover')?'addClass':'removeClass']('show');
    },200);
});

$(function() {
    $(".combobox").scombobox({filterDelay: 300, placeholder: 'Lol'});
    $(".combobox").scombobox({
        data: [{
            value: '001', text: 'val 001'
        }, {
            value: '002', text: 'val 002', selected: true
        }, {
            separator: true, text: 'val 003'
        }, {
            value: '003', text: 'val 003'
        }]
    });
});

jQuery(function($) {
    "use strict";

    var gamba = window.gamba || {};

    /*=======================================
     =             MAIN FUNCTION             =
     =======================================*/

    gamba.mainFunction = function() {

        // ----------------------- WOW-JS --------------------------- //
        new WOW().init();
    };

    /*======================================
     =            INIT FUNCTIONS            =
     ======================================*/

    $(document).ready(function() {
        gamba.mainFunction();
    });

    /*=====  End of INIT FUNCTIONS  ======*/

    $(window).on('load', function() {
    });

});
let form;
$(document).ready(function($) {
    form = $('.form-product');

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
                email : $("#newsletter_email").val()
            },
            success : function (data){
                // console.log(data);
                if(data.status){
                    $('#newsletter_email').val('');
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

    $('#date, #date_donation, #event_date').datepicker({
            format: 'yyyy-mm-dd'
        });

    $('select[name="organize_type"]').change(function(event) {
        const val = $(this).val();
        if(val == 'other'){
            $('input[name="organize_type_other"]').attr('disabled', false);
        }else{
            $('input[name="organize_type_other"]').attr('disabled', 'disabled');
            $('input[name="organize_type_other"]').val('');
        }
    });

    // $('.donation .block-4 .form-group .op').on('click', function(event) {
    //     event.preventDefault();
    //     const el = $(this);
    //     const checkbox = el.find('input[type="checkbox"]');

    //     if(checkbox.is(':checked')) {
    //         checkbox.prop('checked', false);
    //     }else{
    //         checkbox.prop('checked', true);
    //     }

    // });

    $('#donation-form .op1.op').click(function(event) {
        if($(this).hasClass('active')){
            $(this).removeClass('active');
            $(this).find('input').prop('checked', false);
        }else{
            $(this).addClass('active');
            $(this).find('input').prop('checked', true);
        }
    });
    $('#donation-form .opx').click(function(event) {
        var data = $(this).attr('data');
        if($(this).hasClass('active')){
            $(this).removeClass('active');
            $(this).parents('.col-md-4').find('.inputop'+data).attr('disabled', 'disabled');
            $(this).parents('.col-md-4').find('.inputop'+data).val('');
            $(this).find('input').prop('checked', false);
        }else{
            $(this).addClass('active');
            $(this).parents('.col-md-4').find('.inputop'+data).removeAttr('disabled');
            $(this).find('input').prop('checked', true);
        }
    });

    $('.attribute-action').change(function(event) {
        loadProducts();
    });
    $('.btn-reset').click(function(event) {
        resetForm('all');
    });
    $(document).on("click", ".product-item", function() {
        const form = $('.form-product');
        const el = $(this);
        const product_id = el.data('id');
        form.find('.alert-danger').hide();
        beginLoadingTable('.form-product');

        $.ajax({
            url: "/product/load-product-details",
            type: "post",
            data: { _token: _token, product_id: product_id},
            success: function (data){
                const product = data.product;
                const availability = parseFloat(product.availability);
                form.find('.product-item').removeClass('choose');
                el.addClass('choose');

                if(availability > 0){
                    form.find('.product_id').val(product_id);
                    form.find('.qty_available').html(availability);

                    form.find('input[name="quality"]').removeAttr('disabled');
                    form.find('input[name="quality"]').attr('max', availability);

                    form.find('.box-quality').show();
                    form.find('.box-quality .box-2 .amount').html(product.wholesale_price_a);
                    form.find('.box-quality .box-2').show();

                    form.find('.box-total .box-1 .align-items-bottom p').html(product.description);
                    form.find('.box-total .box-2 .amount').html(product.wholesale_price_a);
                    form.find('.box-total').show();
                    form.find('.btn-submit').removeAttr('disabled');
                }else{
                    form.find('.alert-danger').html('This product is out of stock.');
                    form.find('.alert-danger').show();

                    form.find('.box-quality').hide();
                    form.find('.product_id').val(0);
                    form.find('.qty_available').html('');
                    form.find('input[name="quality"]').attr('disabled', 'disabled');
                    form.find('.box-quality .box-2').hide();
                    form.find('.box-total').hide();
                    form.find('.btn-submit').attr('disabled', 'disabled');
                }
                
            },
            error: function(xhr) { // if error occured
                form.find('.alert-danger').html('Error! Try again or contact IT support.');
                form.find('.alert-danger').show();
            },
            complete: function() {
                endLoadingTable('.form-product');
            }
        });  
    });

    $('#add-to-system:enabled').click(function(event) {
        event.preventDefault();
        const self = this;
        const el = $(self);
        beginLoadingBtn(self, false);
        form.find('.alert-danger').hide();

        $.ajax({
            url : "/add-to-system",
            type : "post",
            data : {
                _token : _token,
                email : $("#newsletter_email").val()
            },
            success : function (data){
                // console.log(data);
                if(data.status){
                    $('#newsletter_email').val('');
                    $('.newsletter-form .success').html(data.msg);
                }else{
                    $('.newsletter-form .error').html(data.msg);
                }
            },
            error: function(xhr) { // if error occured
                form.find('.alert-danger').html('Error! Try again or contact IT support.');
                form.find('.alert-danger').show();
            },
            complete: function() {
                endLoadingTable('.form-product');
            }
        });
    });

    $('.img-product-small img').on('click', function(event) {
        event.preventDefault();
        $('.img-product-small img').removeClass('active');
        $(this).addClass('active');
        const src = $(this).attr('src');
        $('.img-product img').attr('src', src);
    });

    $('.img-product .arrow').on('click', function(event) {
        event.preventDefault();
        const type = $(this).attr('type');
        const num = parseFloat( $('.img-product-small img.active').attr('data-num') );
        let current;
        if(type == 'next'){
            current = (num>=3) ? 1 : num+1;
        }else{
            current = (num<=1) ? 3 : num-1;
        }
        $('.img-product-small img[data-num='+current+']').trigger('click');
    });
});
function loadProducts(){
    resetForm('part');
    // form.find('.alert-danger').hide();
    // form.find('.part-type').html('');
    beginLoadingTable('.form-product');
    const data = {
        _token     : _token,
        category_id: form.data('category'),
        // condition  : form.find('.condition').val(),
        size       : form.find('.size').val(),
        // color      : form.find('.color').val(),
        // width      : form.find('.width').val(),
        // height     : form.find('.height').val(),
    };

    $.ajax({
        url : "/product/load-products",
        type : "post",
        data : data,
        success : function (data){
            // console.log(data);
            if(data.status){
                form.find('.part-type').html(data.content);
            }else{
                form.find('.alert-danger').html(data.msg);
                form.find('.alert-danger').show();
            }
        },
        error: function(xhr) { // if error occured
            form.find('.alert-danger').html('Error! Try again or contact IT support.');
            form.find('.alert-danger').show();
        },
        complete: function() {
            // form.find('.size').removeAttr('disabled');
            endLoadingTable('.form-product');
        }
    });
}
function resetForm(type){
    if(type == 'all'){
        form.find('select').val('');
        form.find('.part-type').html('');
    }
    form.find('.alert-danger').hide();
    form.find('.part-type').html('');
    form.find('input[name="quality"]').val(1);
    form.find('input[name="quality"]').attr('disabled', 'disabled');
    form.find('.qty_available').html('');

    form.find('.box-quality .box-2').hide();
    form.find('.box-total').hide();

    form.find('.product_id').val(0);

    form.find('.btn-submit').attr('disabled', 'disabled');
}
function beginLoadingBtn(button, removeClass) {
    $(button).html('<i class="fa fa-spinner fa-spin fa-fw"></i> Waiting...').attr('disabled', 'disabled').addClass('disabled');
    if(removeClass) $(button).removeClass(removeClass);
};
function endLoadingBtn(button, text, btnClass){
    $(button).html(text).removeAttr('disabled').removeClass('disabled');
    if(btnClass) $(button).addClass(btnClass);
};
function beginLoadingTable(table){
    $(table).find('.cm-loading-bg').css('display', 'flex');
};
function endLoadingTable(table){
    $(table).find('.cm-loading-bg').css('display', 'none');
};