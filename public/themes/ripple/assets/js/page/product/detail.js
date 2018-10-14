let changeImg = function(srcImg, altImg = ''){
    $('.main-img-product').attr("src",srcImg);
    $('.main-img-product').attr("alt",altImg);
}

let listenEventClickImg = function(current){
    $('.img-product-small img[data-num='+current+']').trigger('click');
    let srcImg = $('.img-product-small img[data-num='+current+']').attr('src');
    changeImg(srcImg);
}

$(document).ready(function($) {
    $('.img-product-small img').on('click', function(event) {
        event.preventDefault();
        $('.img-product-small img').removeClass('active');
        $(this).addClass('active');
        const src = $(this).attr('src');
        changeImg(src);
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

        listenEventClickImg(current);
    });
});