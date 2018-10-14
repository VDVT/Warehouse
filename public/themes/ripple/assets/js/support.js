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