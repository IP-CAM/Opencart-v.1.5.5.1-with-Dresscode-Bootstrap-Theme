<div class="tab-content-inner-related">
    <?php foreach ($products as $product) { ?>
    <div class="four columns product omega">


        <?php if ($product['thumb']) { ?>
            <div class="product-image-wrapper">

                <?php if ( $sale !== 'disable') : ?>
                    <span class="product_sticker sticker_sale sticker_onsale_<?php echo $saleposition; ?> <?php echo ($sale ? ($product['special'] ? 'sticker_display' : 'sticker_display_none') : 'sticker_display_none'); ?>"></span>
                <?php endif; ?>
                <?php if ( $video !== 'disable') : ?>
                    <span class="product_sticker sticker_video sticker_video_<?php echo $videoposition; ?> <?php echo ($video ? (($product['youtube_video_rel'][0] !== '') ? 'sticker_display' : 'sticker_display_none') : 'sticker_display_none'); ?>"></span>
                <?php endif; ?>


                <a class="img_conteiner" href="<?php echo $product['href']; ?>">
                    <img id="image-<?php echo $product['product_id']; ?>" class="scale-with-grid" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />

                    <?php if ($product['popup']) { ?>
                        <div class="roll_over_img">
                            <img class="scale-with-grid" src="<?php echo $product['popup']; ?>" alt="<?php echo $product['name']; ?>" />
                        </div>
                    <?php } ?>


                    <div class="product-image-wrapper-hover"></div>
                </a>
            </div>
        <?php } ?>

        <div class="wrapper-hover">
            <div class="product-price">
                <?php if ($product['price']) { ?>
                <div class="price">
                    <?php if (!$product['special']) { ?>
                    <span><?php echo $product['price']; ?></span>
                    <?php } else { ?>
                    <span class="price-old"><?php echo $product['price']; ?></span>
                    <span class="price-new"><?php echo $product['special']; ?></span>
                    <?php } ?>
                </div>
                <?php } ?>
            </div>

            <div class="product-name">
                <div class="clearfix">
                    <a class="icon_cart_title" href="<?php echo $product['href']; ?>">
                        <?php echo $product['name-main']; ?>
                    </a>
                    <div class="icon_cart_rollover">
                        <a onclick="addToCartFly('<?php echo $ajaxcart; ?>', '<?php echo $product['product_id']; ?>');"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>

</div>