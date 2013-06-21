<?php
$col3 = 1;
$col2 = 1;


foreach ($products as $k => $product) { ?>
    <div class="four columns product_wrapper count_3cols_col_<?php echo $col3; ?> count_2cols_col_<?php echo $col2; ?>">

        <div class="product">
            <?php if ($product['thumb']) { ?>
            <div class="image product-image-wrapper">

                <?php if ( $sale !== 'disable') : ?>
                    <span class="product_sticker sticker_sale sticker_onsale_<?php echo $saleposition; ?> <?php echo ($sale ? ($product['special'] ? 'sticker_display' : 'sticker_display_none') : 'sticker_display_none'); ?>"></span>
                <?php endif; ?>
                <?php if ( $video !== 'disable') : ?>
                    <span class="product_sticker sticker_video sticker_video_<?php echo $videoposition; ?> <?php echo ($video ? (($product['youtube_video'][0] !== '') ? 'sticker_display' : 'sticker_display_none') : 'sticker_display_none'); ?>"></span>
                <?php endif; ?>

                <a style="display: block;" class="img_conteiner" href="<?php echo $product['href']; ?>">
                    <img class="scale-with-grid image-<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />

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

                <div class="description"><?php echo $product['description']; ?></div>
                <?php if ($product['price']) { ?>
                <div class="product-price">
                    <div class="price">
                        <?php if (!$product['special']) { ?>
                        <span><?php echo $product['price']; ?></span>
                        <?php } else { ?>
                        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                        <?php } ?>
                        <?php if ($product['tax']) { ?>
                        <br />
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                        <?php } ?>
                    </div>
                </div>
                <?php } ?>



                <div class="product-name">
                    <div class="name">
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name-main']; ?></a>
                    </div>
                    <div class="cart">
                        <a onclick="addToCartFly('<?php echo $ajaxcart; ?>', '<?php echo $product['product_id']; ?>');"></a>
                    </div>
                </div>
            </div>

        </div>
    </div>


<?php
    $col3 ++;
    $col2 ++;
    if ($col3 == 4 ) {$col3 = 1;}
    if ($col2 == 3 ) {$col2 = 1;}


} ?>

