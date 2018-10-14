$(document).ready(function() {
    var body                    = $('body'),
        nav_menu_ul             = $('.header-menu .navigation'),
        nav_menu_li             = $('.header-menu .navigation > ul > li'),
        nav_mobile_ul           = $('#nav-menu-mobile .offcanvas-menu ul'),
        nav_mobile_li           = $('#nav-menu-mobile .offcanvas-menu ul li'),
        offcanvas_container     = $('#nav-menu-mobile'),
        toggle_menu             = $('#toggle-menu-mobile');
        

    var themeInit = {
        initSidebar  : function() {
            nav_menu_li.each(function(index, el) {
                // If el is Last element
                if (index == nav_menu_li.length - 1) return;

                // Don't Clone elelemt is mobile button
                $(el).hasClass('mobile') || $(el).hasClass('logo') ? $(el) : $(el).clone().appendTo(nav_mobile_ul);
            });

            $('.offcanvas-menu >.menu li').each(function(index, el) {
                var div_submenu_toggle = '<span class="sub-menu-toggle"></span>',
                back_btn = '<li class="back-btn"><a href="#">Back</a></li>';

                function addBackBtn(el){
                    // Prepend 'span'
                    el.prepend('<span></span>');

                    var self_ul = el.children('ul'),
                    first_span = el.find('span').first();

                    // Append toogle button
                    first_span.append(div_submenu_toggle);

                    if (self_ul.prev().hasClass('mega-menu-title') == true){
                        // If if Mega Menu
                        self_ul.prev().replaceWith($('<a href="#">' + self_ul.prev().text() + '</a>'));
                        self_ul.prev().prependTo(first_span);
                    }
                    else{
                        // Move 'a' to first 'span'
                        el.find('a').first().prependTo(first_span);
                    }

                    // IF 'span' is a icon Home THEN change text
                    // first_span.find('a span').hasClass('fa-home') ? (first_span.find('a span').remove(), first_span.find('a').text('Trang chủ')) : first_span;

                    el.find('span.sub-menu-toggle').children().remove();

                    self_ul.addClass('offcanvas-submenu');
                    self_ul.removeClass('sub-menu');
                    self_ul.prepend(back_btn);
                }

                if ($(el).hasClass('has-children') || $(el).hasClass('has-megamenu')) {

                    addBackBtn($(el));

                    var mega_ul = $(el).find('ul.mega-menu');

                    // If is Mega Menu
                    if(mega_ul.hasClass('mega-menu')){

                        var mega_title = mega_ul.find('.mega-menu-title'),
                            mega_li = mega_title.parent();

                        mega_ul.removeClass('mega-menu');
                        mega_li.addClass('has-children');


                    }
                }
            });


            function responsiveNavmenu() {
                if (window.innerWidth <= 991) {
                    nav_menu_li.each(function(index, el) {
                        index > 0 ? $(el).fadeOut() : $(el);
                    })
                } else {
                    nav_menu_li.each(function(index, el) {
                        index > 0 ? $(el).fadeIn() : $(el);
                        $('.site-backdrop').trigger("click");
                    })
                }
            }
            // responsiveNavmenu();



            toggle_menu.on('click', function() {
                offcanvas_container.addClass('active');
                body.addClass('overflow-hidden');
                body.addClass('offcanvas-open');

                setTimeout(function() {
                    body.append('<div class="site-backdrop"></div>');
                }, 400);
            });

            $(document).on('click', '.site-backdrop', function() {
                body.removeClass('overflow-hidden');
                body.removeClass('offcanvas-open');
                setTimeout(function() {
                    offcanvas_container.removeClass('active');
                    $('.site-backdrop').remove();
                }, 300);
            });

            var submenuArrow = $(".has-children .sub-menu-toggle, .has-megamenu .sub-menu-toggle");
            var offcanvasMenu_Height = $(".offcanvas-menu .menu").height();
            $(".offcanvas-menu .offcanvas-submenu .back-btn").on("click", function(event) {
                var d = $(this).parent(),
                e = $(this).parent().parent().siblings().parent(),
                f = $(this).parents(".menu");
                d.removeClass("in-view"),
                e.removeClass("off-view"),
                "menu" === e.attr("class") ? f.css("height", offcanvasMenu_Height) : f.css("height", e.height()),
                event.preventDefault()
            }),
            submenuArrow.on("click", function(event) {
                var d = $(this).parent().parent().parent(),
                e = $(this).parents(".menu");
                return d.addClass("off-view"),
                $(this).parent().parent().find("> .offcanvas-submenu").addClass("in-view"),
                e.css("height", $(this).parent().parent().find("> .offcanvas-submenu").height()),
                event.preventDefault();
            });
        },

        initSearchForm  : function() {
            /* Search form */
            $('.search-form').on('focus click', function(event) {
                $(this).addClass('focus');
            });

            $('.search-form input').on('blur', function(event) {
                $(this).closest('.search-form').removeClass('focus');
            });

            $(document).on('click', function(event) {
                $(event.target).closest('.search-form').length == 0 || event.target.tagName == 'HTML' ? $('.search-form').removeClass('focus') : 0;
            });
        },

        init : function() {
            this.initSidebar();
            this.initSearchForm();
        }
    }

    themeInit.init();

    $(window).resize(function(event) {
            
    });
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