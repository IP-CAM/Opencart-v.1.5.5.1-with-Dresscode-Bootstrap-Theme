<div class="four columns alpha" id="deal">
  <h3><?php echo $heading_title; ?></h3>
    <div class="product" style="position: relative;">
      <div class="product-image-wrapper">
      <?php foreach ($products as $product) { ?>

        <?php if ($product['thumb']) { ?>

          <?php if ( $sale !== 'disable') : ?>
          <span class="product_sticker sticker_sale sticker_onsale_<?php echo $saleposition; ?> <?php echo ($sale ? ($product['special'] ? 'sticker_display' : 'sticker_display_none') : 'sticker_display_none'); ?>"></span>
          <?php endif; ?>
          <?php if ( $video !== 'disable') : ?>
          <span class="product_sticker sticker_video sticker_video_<?php echo $videoposition; ?> <?php echo ($video ? (($product['youtube_video'][0] !== '') ? 'sticker_display' : 'sticker_display_none') : 'sticker_display_none'); ?>"></span>
          <?php endif; ?>

          <a class="img_border" href="<?php echo $product['href']; ?>">
                <img class="scale-with-grid image-<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                <div class="product-image-wrapper-hover"></div>
            </a>

          <?php } ?>


          <table style="width: 100%" class="wrapper-hover-hidden">

              <tr>
                  <td>
                      <div class="clearfix product-price">
                          <?php if ($product['price']) { ?>
                          <div class="price">
                              <?php if (!$product['special']) { ?>
                              <?php echo $product['price']; ?>
                              <?php } else { ?>
                              <s class="price-old"><?php echo $product['price']; ?></s> <span class="price-new"><?php echo $product['special']; ?></span>
                              <?php } ?>
                          </div>
                          <?php } ?>
                      </div>

                      <div class="product-name">
                          <div class="clearfix">
                                <a class="icon_cart_title" href="<?php echo $product['href']; ?>"><?php echo $product['name-main']; ?></a>
                               <div class="icon_cart_rollover">
                                   <a onclick="addToCartFly('<?php echo $ajaxcart; ?>', '<?php echo $product['product_id']; ?>');"></a>
                               </div>
                          </div>
                      </div>
                  </td>
              </tr>

          </table>


      <?php } ?>
    </div>
  </div>
</div>
