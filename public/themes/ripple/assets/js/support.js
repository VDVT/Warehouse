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
$('#navbarSupportedContent .dropdown .nav-link').hover(function() {
    var img = $(this).attr('data');
    $(this).parents('.box_mega').find('.img-fluid').attr('src', img);
});
$('#navbarSupportedContent .dropdown-menu-type-2 .nav-link').hover(function() {
    var img = $(this).attr('data');
    var text = $(this).html();
    $(this).parents('.box_mega').find('.img-fluid').attr('src', img);
    $(this).parents('.box_mega').find('.overlight').find('a').html(text);
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
//Donation

$('#donation-form .organizetype').change(function(event) {
    if($(this).val()=='Other'){
        $('.organizetypeother').removeAttr('disabled');
    }else{
        $('.organizetypeother').attr('disabled', 'disabled');        
    }
});
$('#donation-form .op').click(function(event) {
    if($(this).hasClass('active')){
        $(this).removeClass('active');
        $(this).find('input').removeAttr('checked');
    }else{
        $(this).addClass('active');
        $(this).find('input').attr('checked', 'checked');
    }
    if($(this).hasClass('opx') && $(this).hasClass('active')){
        var data = $(this).attr('data');
        $(this).parents('.col-md-4').find('.inputop'+data).removeAttr('disabled');
    }else{
        var data = $(this).attr('data');
        $(this).parents('.col-md-4').find('.inputop'+data).attr('disabled', 'disabled');
    }
});

$('body').on('mouseenter mouseleave','.dropdown',function(e){
    var _d=$(e.target).closest('.dropdown');
    _d.addClass('show');
    setTimeout(function(){
        _d[_d.is(':hover')?'addClass':'removeClass']('show');
    },200);
});

jQuery(function($) {
    "use strict";

    var gamba = window.gamba || {};

    /*=======================================
     =             MAIN FUNCTION             =
     =======================================*/

    gamba.mainFunction = function() {

        // ----------------------- WOW-JS --------------------------- //
        // new WOW().init();
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