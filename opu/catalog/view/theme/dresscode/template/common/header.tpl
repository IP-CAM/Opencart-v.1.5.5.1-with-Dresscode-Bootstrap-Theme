<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>



<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/base.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/skeleton.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/dresscode.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/sliders_styles.css" />

<!-- Responsibility switching -->
<?php if ( $response !== 'disable') { ?>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/layout.css" />
<?php } else { ?>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/layout-response-off.css" />
<?php } ?>
<!-- Responsibility switching -->

<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/effects.css" />


<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>


    <script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/cloud-zoom.1.0.2.js"></script>

<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.selectbox-0.2.js"></script>

    <script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.jcarousel.min.js"></script>

    <script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.elastislide.js"></script>

    <script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/AC_RunActiveContent.js"></script>



    <script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jcloud.js"></script>


    <script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/custom.js"></script>
    <!--[if !IE]><!-->
    <script>if(/*@cc_on!@*/false){document.documentElement.className+='ie10';}</script>
    <!--<![endif]-->



    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=<?php echo str_replace(' ', '+', $font); ?>:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>



    <!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/ie8.css" />
<![endif]-->
<!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/ie9.css" />
<![endif]-->


<!-- changing options from admin panel  -->

<style type="text/css">

       /* font family */
<?php if ( !empty($font) ) : ?>
        h1, h2, h3, h4, h5, h6,
        .phone,
        #slogan li a,
        .tabs div a, .box .box-heading,
        .product-list .name a,
        .product-info .price-bottom-box .regular-price,
        .product-info .price-bottom-box .special-price-box{
            font-family: <?php echo $font; ?>
        }
<?php endif; ?>
       /* body bg pattern */
<?php if ( !empty($bgpattern) && ($bgpattern !== '0') ) : ?>
        body{
           background-image: url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/dresscode_images/bg-patterns/<?php echo $bgpattern; ?>");
         }
<?php endif; ?>

        /* theme color */
<?php if ( !empty($themecolor)) : ?>
    #header .button-search,
    #footer_button,
    .newsletter_footer a.button,
    .es-nav span,
    #header #cart .content .checkout a,
    #menu > ul > li:hover > a {
       background-color: <?php echo $themecolor; ?>
    }

    #menu > ul > li > div{
        border-top: 3px solid <?php echo $themecolor; ?>;
    }
    input.button, a.button, .product-list .listing_cart input{
        background-color: <?php echo $themecolor; ?>
    }
    input.button:hover, a.button:hover, .product-list .listing_cart input:hover{
        background: <?php echo $themecolor; ?>
    }

    <?php endif; ?>

        /* content bg color */
<?php if ( !empty($contentbgcolor)) : ?>
    body{
      background-color: <?php echo $contentbgcolor; ?>
    }
<?php endif; ?>

       /* font color */
<?php if ( !empty($fontcolor)) : ?>
    h1, h2, h3, h4, h5, h6, .phone, #nav_first .nav_block_dropdown a, .shopping_cart span.cart_link, .shopping_cart span em, #select_top .sbOptions a:link, #select_top .sbOptions a:visited, #slogan li a, .tabs div a, #footer h3, #footer_higher h3, #footer li a, #powered, #footer_higher_content #deal, #footer_higher_content #contact, #footer_higher_content #twitter, #footer_higher_content #facebook, #footer_higher_content #contact a, #header input[type="text"], #menu > ul > li > div > ul > li > a, .breadcrumb a, #content h1, h1.listing_title, .category-info, .box-category > ul > li > a, .box .box-content a, .category-list ul li a, .product-filter, .product-filter a, .pagination .results, .htabs a, .htabs a.selected, .product-page-content .left_info, .product-info .add-to-links a, .product-info .price-bottom-box .regular-price, .product-page-content .dresscode_product_custom_block_subtitle, .custom_block_items .custom_block_item, .product-info .gallery_note, .product-page-content .sixteen.columns.alpha > div, .product-info .review .review-stars p.no-rating a, .tab-content, .tags, .tags a, .attribute thead td, .attribute thead tr td:first-child, .attribute tr td:first-child, .attribute td{
       color: <?php echo $fontcolor; ?>
}
<?php endif; ?>


       /* product rollover disable */
<?php if ( $productrollover == 'disable') : ?>
    .roll_over_img{
        display: none!important;
}
<?php endif; ?>

</style>
<!-- changing options from admin panel  -->

<?php echo $google_analytics; ?>
</head>
<body>


<?php if(!empty($this->request->get['route']) && $this->request->get['route'] != 'common/home') { ?>
 <div class="main_page">
<?php } ?>

<div id="container">
    <div id="header">
        <div class="container">
                <?php if ($logo) { ?>
                    <div id="logo" class="five columns"><a href="<?php echo $home; ?>"><img class="scale-with-grid" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
                <?php } ?>

                <div id="top_link" class="eleven columns">

                <div class="row padding-2">
                    <div class="phone">
                        <?php echo $text_phone_number; ?>
                    </div>
                    <?php echo $language; ?>
                    <?php echo $currency; ?>
                    <?php echo $cart; ?>

                </div>
                <div class="row">

                    <div id="nav_first">
                        <div id="nav_block_head">
                            <div class="nav_block_head_field"><?php echo $text_service_tools; ?></div>
                            <span class="nav_block_head_button"> </span>
                            <div class="clear"></div>
                        </div>
                        <div class="nav_block_dropdown">
                            <ul class="links">
                                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
                                <li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
                                <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                                <li class="last">
                                    <?php if (!$logged) { ?>
                                        <?php echo $text_welcome_dresscode; ?>
                                    <?php } else { ?>
                                        <?php echo $text_logged_dresscode; ?>
                                    <?php } ?>
                                </li>
                            </ul>

                        </div>
                    </div>



                    <div id="select_top" class="select_wrapper">
                        <select name="select1" id="select1" tabindex="1">
                            <option value="<?php echo $text_option_1; ?>"><?php echo $text_option_1; ?></option>
                            <option value="<?php echo $text_option_2; ?>"><?php echo $text_option_2; ?></option>
                        </select>


                        <div id="search_dresscode">
                            <div id="search">
                                <input id="search_input" type="text" onclick="this.value = '';" name="search" value="<?php echo $text_search; ?>" />
                            </div>
                            <div class="button-search"></div>
                        </div>

                    </div>



                </div>


        </div>

    </div>


<?php if ($categories) { ?>
   <div class="nav-container">
       <div class="container">
            <div class="sixteen columns">

                <div id="menu_block_head">
                    <div class="nav_block_head_field"><?php echo $text_choose_category; ?></div>
                    <span class="menu_block_head_button"> </span>
                    <div class="clear"></div>
                </div>

                <div class="menu_block_dropdown">

                        <div id="menu">
                            <ul id="nav">
                                <li class="img_link_wrapper"><a class="image-link" href="<?php echo $home; ?>"></a></li>
                                <?php foreach ($categories as $category) { ?>

                                    <li>
                                        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                        <?php if ($category['children']) { ?>
                                        <div class="<?php echo ($category['description'] ? 'with_descr' : 'none_descr'); ?> width-<?php echo $category['column']; ?>">
                                            <?php for ($i = 0; $i < count($category['children']);) { ?>
                                            <ul class="<?php echo (($category['column']>1) ? 'list' : 'grid'); ?>">
                                            <?php
                                                    if ($category['description']) {
                                                        $j = $i + ceil(count($category['children']) / 1);
                                                    } else {
                                                        $j = $i + ceil(count($category['children']) / $category['column']);
                                                    }
                                                  ?>
                                                  <?php for (; $i < $j; $i++) { ?>
                                                  <?php if (isset($category['children'][$i])) { ?>
                                                  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                                                  <?php } ?>
                                                  <?php } ?>
                                                </ul>
                                            <?php } ?>

                                            <?php if ($category['description']) { ?>
                                                <div class="category_description_block">
                                                    <?php echo $category['description']; ?>
                                                </div>
                                            <?php } ?>
                                        </div>
                                        <?php } ?>
                                    </li>
                                <?php } ?>

                                <!-- menu custom block -->
                                <?php echo $custom_menu; ?>
                                <!-- menu custom block -->

                            </ul>
                        </div>





                </div>
           </div>
       </div>
   </div>


<?php } ?>
</div>

    <div class="container">
        <div class="sixteen columns">
            <div id="notification"></div>
        </div>
    </div>

    <div class="<?php echo (!empty($this->request->get['route']) && $this->request->get['route'] != 'common/home') ? 'container all_pages' : 'base_page'; ?>">
