<?php foreach ($products as $product) { ?>
<div class="product">
    <?php if ($product['thumb']) { ?>
    <div class="image product-image-wrapper">
        <span class="product_sticker sticker_onsale_top_left <?php echo ($product['special']) ? 'sticker_onsale_display' : 'sticker_onsale_display_none'; ?>"></span>

        <a style="display: block;" class="img_conteiner" href="<?php echo $product['href']; ?>">
            <img class="scale-with-grid" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
            <div class="product-image-wrapper-hover"></div>
        </a>
    </div>
    <?php } ?>
    <div class="right">

        <div class="name">
            <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        </div>
        <div class="description"><?php echo $product['description']; ?></div>
        <div class="overflow_hidden">
        <?php if ($product['price']) { ?>
        <div class="product-price">
            <div class="price">
                <?php if (!$product['special']) { ?>
                <span><?php echo $product['price']; ?></span>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>

                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
            </div>
        </div>
        <?php } ?>

            <?php if ($product['rating']) { ?>
            <div class="rating"><img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
            <?php } ?>
        <div class="listing_cart">
            <input class="listing_button" type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />
        </div>
    </div>
        <div class="overflow_hidden">

            <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
            <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
        </div>
    </div>

</div>
<?php } ?>