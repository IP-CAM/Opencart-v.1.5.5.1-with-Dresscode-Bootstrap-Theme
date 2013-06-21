function TopSlider(){
    var k1=0.5;
    var k2=0.6;
    var w0=jQuery(window).width();
    if(w0 > 1600) { k2=0.55}
    var w2= w0*k1;
    var w1= w0*k2;
    var w3= (w0-jQuery(".container").width())*0.5;
    var h1=w2/1.9;

    if(h1 < 235) {h1=235;}
    jQuery("#slider_top").css({"height":h1+"px"});
    jQuery("#slider_top").css({"width":w0+"px"});
    jQuery("#carousel1 li").css({"width":w0+"px"});
    jQuery(".overlap_widget_wrapper").css({"width":w0+"px"});
    jQuery("#slider_top a.callbacks_nav.next").css({"right":w3+"px","top":h1*0.5-jQuery("#slider_top a.callbacks_nav.next").height()*0.5+"px"});
    jQuery("#slider_top a.callbacks_nav.prev").css({"left":w3+"px","top":h1*0.5-jQuery("#slider_top a.callbacks_nav.next").height()*0.5+"px"});
    jQuery("#carousel1 .overlap_widget_wrapper .left_image .title").css({"left":w3+"px"});
    jQuery("#carousel1 .overlap_widget_wrapper .right_image .title").css({"right":w3+"px"});
    jQuery(".overlap_widget_wrapper .left_image").css({"width":w1+"px"});
    jQuery(".overlap_widget_wrapper .left_image .placeholder").css({"width":w2+"px"});
    jQuery(".overlap_widget_wrapper .right_image").css({"width":w1+"px"});
    jQuery(".overlap_widget_wrapper .right_image .placeholder").css({"width":w2+"px"});
    jQuery("#back-top").css({"bottom":jQuery("#footer").height()+150+"px"});

    var is_open = false;
    var z_index = 0;

    jQuery(".placeholder").mouseenter(function(){
        is_open = true;
        jQuery(this).parent().css({"zIndex":"999"});
        jQuery(this).stop().animate({
            "width":w1+"px"
        }, 550, 'easeOutQuad');

    });

    jQuery(".placeholder").mouseleave(function(){
        is_open = false;
        z_index++;
        jQuery(this).parent().css({"zIndex":z_index});
        jQuery(this).stop().animate({
            "width":w2+"px"
        }, 550, 'easeOutQuad');
    });

};



jQuery(function() {
    jQuery('#slider_top a.callbacks_nav').hover(function() {
            jQuery(this).stop().animate({opacity:1.0},500);
        },
        function() {
            jQuery(this).stop().animate({opacity:0.6},500);
    });



    jQuery("#carousel1").responsiveSlides({
        pager: false,
        nav: true,
        speed: 1000,
        auto: true,
        timeout: 3600,
        namespace: "callbacks"
    });
    jQuery('#carousel').elastislide({
        easing		: 'easeInOutQuad',
        speed		: 1200
    });


});


