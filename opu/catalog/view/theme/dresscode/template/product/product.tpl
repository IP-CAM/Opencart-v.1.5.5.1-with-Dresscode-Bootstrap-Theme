<?php echo $header; ?>
<div>
<?php echo $content_top; ?>
<?php include('breadcrumbs.php'); ?>
<div class="sixteen columns product-page-content">

<div class="clearfix product-info">
    <?php if ($thumb || $images) { ?>
    <div class="left">
      <?php if ($thumb) { ?>
      <div class="image">
	    <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="img_conteiner cloud-zoom" id='zoom1' rel="adjustX:-4, adjustY:-4, zoomWidth:360">
            <img class="scale-with-grid" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
        </a>
	  </div>
      <?php } ?>
      <?php if ($images) { ?>
      <div class="gallery_note"><?php echo $rollover_text; ?></div>
        <div class="image-additional">
        <?php foreach ($images as $image) { ?>
          <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>' ">
              <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
          </a>
        <?php } ?>
      </div>
      <?php } ?>
    </div>
    <?php } ?>
    <!--  begin right -->

    <div class="right">

    <!--  product info -->
    <div class="left_info">

        <h1><?php echo $heading_title; ?></h1>
        <p class="availability"><?php echo $stock; ?></p>
        <?php if ($review_status) { ?>
        <div class="review">
            <div class="review-stars">
                <?php if ($rating == 0) { ?>
                    <p class="no-rating"><a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $no_rating; ?></a></p>
               <?php } else { ?>
                    <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
                <?php }  ?>
            </div>
            <div class="share"><!-- AddThis Button BEGIN -->
                <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
                <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script>
                <!-- AddThis Button END -->
            </div>
        </div>
        <?php } ?>
        <?php if ($description) { ?>
              <div class="product-info-short-description">
                  <?php echo (strlen($description) > 400 ? utf8_substr(strip_tags(html_entity_decode($description, ENT_QUOTES, 'UTF-8')), 0, 400) . '..' : $description); ?>
              </div>
        <?php } ?>
        <div class="description">
            <?php if ($manufacturer) { ?>
            <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
            <?php } ?>
            <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
            <?php if ($reward) { ?>
            <span><?php echo $text_reward; ?></span> <?php echo $reward; ?>
            <?php } ?>

        </div>
        <div class="add-to-links">
            <a class="link-wishlist" onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a>
            <a class="link-compare" onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a>
        </div>





        <?php if ($options) { ?>
          <div class="options">
            <h2><?php echo $text_option; ?></h2>

            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <select name="option[<?php echo $option['product_option_id']; ?>]">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
              <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
              </label>
              <br />
              <?php } ?>
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
              <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
              </label>
              <br />
              <?php } ?>
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <table class="option-image">
                <?php foreach ($option['option_value'] as $option_value) { ?>
                <tr>
                  <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                  <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                  <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                      <?php if ($option_value['price']) { ?>
                      (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                      <?php } ?>
                    </label></td>
                </tr>
                <?php } ?>
              </table>
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="36" rows="5"><?php echo $option['option_value']; ?></textarea>
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
            </div>
            <br />
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b><br />
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
            </div>
            <br />
            <?php } ?>
            <?php } ?>
          </div>
        <?php } ?>



        <?php if ($price) { ?>
        <div class="price-bottom-box">
            <?php if (!$special) { ?>
            <p class="regular-price"><?php echo $price; ?></p>
            <?php } else { ?>
            <p class="special-price-box">
                <span class="price-old"><?php echo $price; ?></span>
                <span class="price-new"><?php echo $special; ?></span>
            </p>
            <?php } ?>

            <?php if ($tax) { ?>
            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
            <?php } ?>
            <?php if ($points) { ?>
            <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
            <?php } ?>
            <?php if ($discounts) { ?>
            <br />
            <div class="discount">
                <?php foreach ($discounts as $discount) { ?>
                <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
                <?php } ?>
            </div>
            <?php } ?>
        </div>
        <?php } ?>




        <div class="cart-bottom-box">

                <div class="clearfix">

                    <div class="qty-ticker-block">
                        <span class="qty-text"><?php echo $text_qty; ?></span>
                        <span class="marker_qty_left">&nbsp;</span>
                        <input type="text" id="qty" name="quantity" size="2" value="<?php echo $minimum; ?>" />
                        <span class="marker_qty_right">&nbsp;</span>
                    </div>
                    <div class="button_cart">
                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                        <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
                    </div>
                </div>



            <?php if ($minimum > 1) { ?>
                <div class="minimum"><?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
            <div class="clearfix socials_plugins">
                <div class="google">
                    <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
                    <div class="g-plusone" data-size="medium" data-count="true"></div>
                </div>
                <div class="facebook">
                    <script>(function(d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) return;
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));</script>
                    <div class="fb-like" data-send="false" data-layout="button_count" data-width="94" data-show-faces="false" data-font="arial"></div>
                </div>
                <div class="twitter">
                    <a rel="nofollow" href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-via="tonytemplates"></a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
                </div>
            </div>

    </div>
    <!--  product info -->

    <!--  CUSTOM BLOCK -->
    <?php echo $column_right; ?>

    <!--  CUSTOM BLOCK -->

    </div>

    <!--  END right -->


</div>
  <div id="tabs" class="htabs">
      <?php if ($description) { ?>
        <a href="#tab-description"><?php echo $tab_description; ?></a>
      <?php } ?>
      <?php if ($attribute_groups) { ?>
        <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
      <?php } ?>
      <?php if ($review_status) { ?>
        <a href="#tab-review"><?php echo $tab_review; ?></a>
      <?php } ?>
      <?php if ($products) { ?>
        <a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>
      <?php } ?>
        <a href="#tab-youtube"><?php echo $tab_youtube; ?></a>
  </div>

    <?php if ($description) { ?>
    <div id="tab-description" class="tab-content">
        <div class="tab-content-inner">
            <?php echo $description; ?>
        </div>
    </div>
    <?php } ?>

  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
      <div class="tab-content-inner">
          <table class="attribute">
          <?php foreach ($attribute_groups as $attribute_group) { ?>
          <thead>
            <tr>
              <td colspan="2"><?php echo $attribute_group['name']; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
            <tr>
              <td><?php echo $attribute['name']; ?></td>
              <td><?php echo $attribute['text']; ?></td>
            </tr>
            <?php } ?>
          </tbody>
          <?php } ?>
        </table>
      </div>
  </div>
  <?php } ?>
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
      <div class="tab-content-inner">
          <div id="review"></div>
        <h2 id="review-title"><?php echo $text_write; ?></h2>
        <b><?php echo $entry_name; ?></b><br />
        <input type="text" name="name" value="" />
        <br />
        <br />
        <b><?php echo $entry_review; ?></b>
        <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
        <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
        <br />
        <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
        <input type="radio" name="rating" value="1" />
        &nbsp;
        <input type="radio" name="rating" value="2" />
        &nbsp;
        <input type="radio" name="rating" value="3" />
        &nbsp;
        <input type="radio" name="rating" value="4" />
        &nbsp;
        <input type="radio" name="rating" value="5" />
        &nbsp;<span><?php echo $entry_good; ?></span><br />
        <br />
        <b><?php echo $entry_captcha; ?></b><br />
        <input type="text" name="captcha" value="" />
        <br />
        <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
        <br />
        <div class="buttons">
          <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
        </div>
      </div>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div id="tab-related" class="tab-content">
      <?php include('related_products.tpl'); ?>
  </div>
  <?php } ?>


<div id="tab-youtube" class="tab-content">
    <div class="tab-content-inner">


        <?php

			$colorbox = 0;

				foreach($youtubes as $youtube){
				$code = explode('=',$youtube);



					if(!empty($code[0])){
						if(!$colorbox){//normal display
	?>
                        <div class="video-container">
                        <iframe src="http://www.youtube.com/embed/<?php echo $code[1]; ?>?wmode=transparent&rel=0" frameborder="0" allowTransparency="true" allowfullscreen></iframe>
                        </div>

	<?php
						} else{//color box
	?>
							<a title="View <?php echo $youtube; ?>" class="youtube" href="http://www.youtube.com/v/<?php echo $code[1]; ?>?fs=1&amp;width=640&amp;height=480&amp;hl=en_US1&amp;iframe=true&amp;rel=0"><img src="http://img.youtube.com/vi/<?php echo $code[1]; ?>/hqdefault.jpg" alt="<?php echo $youtube; ?>" /></a>
	<?php
						}
					} else {
					    echo $youtube_empty;
					}
				}

	?>
    </div>

        </div>



  <?php if ($tags) { ?>
  <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  </div>

<?php /* echo $column_left; */ ?>

<?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	overlayClose: true,
	opacity: 0.5
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {


    $.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				$('.success').fadeIn('slow');
				$('#cart-total').html(json['total']);
				$('html, body').animate({ scrollTop: 0 }, 'slow');



                /* fly to cart*/
                var productX 		= jQuery("#image").offset().left;
                var productY 		= jQuery("#image").offset().top;

                var basketX 		= jQuery("#cart").offset().left;
                var basketY 		= jQuery("#cart").offset().top;

                var gotoX 			= basketX - productX;
                var gotoY 			= basketY - productY;

                var newImageWidth 	= jQuery("#image").width() / 5;
                var newImageHeight	= jQuery("#image").height() / 5;




                $("#image")
                        .clone()
                        .css({'position' : 'absolute', 'z-index' : '100'})
                        .prependTo("#cart")
						//.appendTo("#cart")
						.animate({opacity: 0.4}, 100 )  
                        .animate({opacity: 0.5, marginLeft: 100, width: newImageWidth, height: newImageHeight}, 700, function() {
                            $(this).remove();
                        });



                /* fly to cart*/

			}
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".youtube").colorbox({iframe:true, width:"280", height:"480",transition:"fade"});
    });
</script>
<?php echo $footer; ?>