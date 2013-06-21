jQuery(function() {
    jQuery("#back-top").css({"bottom":jQuery("#footer").height()+150+"px"});

    jQuery("#back-top").hide();
    jQuery(window).scroll(function () {
            if (jQuery(this).scrollTop() > 600) {
                jQuery('#back-top').fadeIn();
            } else {
                jQuery('#back-top').fadeOut();
            }
    });
    jQuery('#back-top a').click(function () {
            jQuery('body,html').animate({
                scrollTop: 0
            }, 400);
            return false;
    });


    jQuery('#back-top a').hover(function() {
            jQuery(this).stop().animate({opacity:1.0},500);
        },
        function() {
            jQuery(this).stop().animate({opacity:0.4},500);
    });


    jQuery(".shopping_cart a.open #cart-total").live('click',function() {
        jQuery("#header #cart .content").fadeToggle(300, "linear");
    });




    jQuery(".product").hover(function() {
        jQuery(this).find(".roll_over_img").fadeToggle("fast", "linear");
        jQuery(this).find(".product-image-wrapper-hover").fadeToggle("fast", "linear");
    });

    jQuery(".product-list-wrapper").hover(function() {
        jQuery(this).find(".roll_over_img").fadeToggle("fast", "linear");
    });


    jQuery(".product").hover(function() {
        jQuery(this).find(".wrapper-hover").animate({ backgroundColor: "#444444" }, 500);
    },function() {
        jQuery(this).find(".wrapper-hover").animate({ backgroundColor: "#fff" }, 500);
    });

    jQuery(".product").hover(function() {
        jQuery(this).find(".wrapper-hover-hidden ").fadeToggle(500, "linear");
    });

    jQuery(".product").hover(function() {
        jQuery(this).find(".wrapper-hover span").animate({color:"#fff"}, 500);
        jQuery(this).find(".wrapper-hover a").animate({color:"#fff"}, 500);
    },function() {
        jQuery(this).find(".wrapper-hover span").animate({color:"#000"}, 500);
        jQuery(this).find(".wrapper-hover a").animate({color:"#000"}, 500);
    });




    jQuery('#footer_button').click(function() {
        jQuery('#footer_higher_content').slideToggle(500);
        jQuery('#footer_button').toggleClass('footer_button_up');
    });


    jQuery('#nav_block_head').click(function() {
        jQuery('.nav_block_dropdown').toggleClass('visible_on');
    });


    jQuery('#menu_block_head').click(function() {
        jQuery('.menu_block_dropdown').toggleClass('visible_on');
    });

    jQuery("#select1").selectbox();
    jQuery("#select2").selectbox();
    jQuery("#select3").selectbox();





    jQuery('#mycarousel').jcarousel({
            vertical: true,
            scroll: 1,
            auto: 3,
            wrap: 'circular',
            animation: 1000,
            easing: 'linear'
    });



    //slider switch
    set_reset_tab=function (tab) {
        jQuery('#bestsellers_activate, #specials_activate, #newproducts_activate').removeClass('active_slider');
        tab.addClass('active_slider');
    };

    if(!jQuery('#newproducts_slider').length) {
        jQuery(".tabs div:eq(0)").remove();
    };
    if(!jQuery('#specials_slider').length) {
        jQuery("#specials_activate").parent().remove();
    };
    if(!jQuery('#bestsellers_slider').length) {
        jQuery("#bestsellers_activate").parent().remove();
    };

    jQuery('.tabs > div:first a').addClass('active_slider');
    jQuery(".sixteen.columns.alpha div:first").show();

    jQuery('#bestsellers_activate').click(function() {
        jQuery('#bestsellers_slider').show();
        jQuery('#newproducts_slider').hide();
        jQuery('#specials_slider').hide();
        set_reset_tab(jQuery(this));
    });
    jQuery('#specials_activate').click(function() {
        jQuery('#specials_slider').show();
        jQuery('#newproducts_slider').hide();
        jQuery('#bestsellers_slider').hide();
        set_reset_tab(jQuery(this));
    });

    jQuery('#newproducts_activate').click(function() {
        jQuery('#newproducts_slider').show();
        jQuery('#bestsellers_slider').hide();
        jQuery('#specials_slider').hide();
        set_reset_tab(jQuery(this));
    });

    jQuery('#carousel_bestsellers').elastislide({
        easing		: 'easeInOutQuad',
        speed		: 1200
    });
    jQuery('#carousel_specials').elastislide({
        easing		: 'easeInOutQuad',
        speed		: 1200
    });
    jQuery('#carousel_newproducts').elastislide({
        easing		: 'easeInOutQuad',
        speed		: 1200,

    });
    //end slider switch

    //product page counter
    var old_q;
    old_q=parseFloat(jQuery('#qty').val());
    jQuery('.marker_qty_right').click(function(){
        jQuery('#qty').val(++old_q);
    });
    jQuery('.marker_qty_left').click(function(){
        if(old_q<2)old_q=1;
        jQuery('#qty').val(--old_q);
    });
    //end product page counter

    /*
    jQuery("iframe").each(function(){
        var ifr_source = jQuery(this).attr('src');
        var wmode = "wmode=transparent";
        if(ifr_source.indexOf('?') != -1) {
            var getQString = ifr_source.split('?');
            var oldString = getQString[1];
            var newString = getQString[0];
            jQuery(this).attr('src',newString+'?'+wmode+'&'+oldString);
        }
        else jQuery(this).attr('src',ifr_source+'?'+wmode);
    });
     */

    /* tag cloud */
    $('ul#jcloud-tags').jcloud({
        radius:80,          /*    cloud radius */
        size:30,             /*    tags font size  */
        step:2,              /*    cloud step  */
        speed:50,            /*    cloud speed  */
        //start_speed:30,
        flats:3,             /*    flats count */
        clock:90,            /*    timer interval */
        areal:80,           /*    cloud areal  */
        splitX:1,          /*    X-axis delta */
        splitY:1,          /*    Y-axis delta  */
        colors:['#000000','#000000','#000000','#000000','#000000','#000000']
    });

});

function browserDetectNav(chrAfterPoint) {
    var
        UA=window.navigator.userAgent,
        OperaB = /Opera[ \/]+\w+\.\w+/i,
        OperaV = /Version[ \/]+\w+\.\w+/i,
        FirefoxB = /Firefox\/\w+\.\w+/i,
        ChromeB = /Chrome\/\w+\.\w+/i,
        SafariB = /Version\/\w+\.\w+/i,
        IEB = /MSIE *\d+\.\w+/i,
        SafariV = /Safari\/\w+\.\w+/i,
        browser = new Array(),
        browserSplit = /[ \/\.]/i,
        OperaV = UA.match(OperaV),
        Firefox = UA.match(FirefoxB),
        Chrome = UA.match(ChromeB),
        Safari = UA.match(SafariB),
        SafariV = UA.match(SafariV),
        IE = UA.match(IEB),
        Opera = UA.match(OperaB);

    if ((!Opera=="")&(!OperaV=="")) browser[0]=OperaV[0].replace(/Version/, "Opera")
    else
    if (!Opera=="")	browser[0]=Opera[0]
    else
    if (!IE=="") browser[0] = IE[0]
    else
    if (!Firefox=="") browser[0]=Firefox[0]
    else
    if (!Chrome=="") browser[0] = Chrome[0]
    else
    if ((!Safari=="")&&(!SafariV=="")) browser[0] = Safari[0].replace("Version", "Safari");

    var  outputData;
    if (browser[0] != null) outputData = browser[0].split(browserSplit);
    if ((chrAfterPoint==null)&&(outputData != null)) {
        chrAfterPoint=outputData[2].length;
        outputData[2] = outputData[2].substring(0, chrAfterPoint);
        return(outputData);
    }
    else return(false);
}

jQuery(window).load(function() {
    var data = browserDetectNav();
    /*alert("browser: "+data[0]+", version: "+data[1]+"."+data[2]);*/
    if (data[0] == 'Safari') {
        /*alert("browser: "+data[0]);*/
        jQuery("#menu > ul > li > div.with_descr").css("width", "32em");
    }

});


