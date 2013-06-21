<?php echo $header; ?>
<div class="az-content-bg">

    <?php include('breadcrumbs.php'); ?>

        <div class="twelve columns omega right_column">
          <?php echo $content_top; ?>
          <h1 class="listing_title"><?php echo $heading_title; ?></h1>
          <?php if ($thumb || $description) { ?>
          <div class="category-info">
            <?php if ($thumb) { ?>
            <div class="image"><img class="scale-with-grid" src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
            <?php } ?>
            <?php if ($description) { ?>
            <?php echo $description; ?>
            <?php } ?>
          </div>
          <?php } ?>
          <?php if ($categories) { ?>
          <h2><?php echo $text_refine; ?></h2>
          <div class="category-list">
            <?php if (count($categories) <= 5) { ?>
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
            <?php } else { ?>
            <?php for ($i = 0; $i < count($categories);) { ?>
            <ul>
              <?php $j = $i + ceil(count($categories) / 4); ?>
              <?php for (; $i < $j; $i++) { ?>
              <?php if (isset($categories[$i])) { ?>
              <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
              <?php } ?>
              <?php } ?>
            </ul>
            <?php } ?>
            <?php } ?>
          </div>
          <?php } ?>
          <?php if ($products) { ?>


          <?php include('pager.php'); ?>

          <div class="product-grid hide">
             <?php require('listing_view_grid.php'); ?>
          </div>
          <div class="product-list hide">
              <?php require('listing_view_list.php'); ?>
          </div>


          <div class="pagination"><?php echo $pagination; ?></div>
          <?php } ?>
          <?php if (!$categories && !$products) { ?>
          <div class="content"><?php echo $text_empty; ?></div>
          <div class="buttons">
            <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
          </div>
          <?php } ?>
          <?php echo $content_bottom; ?></div>


    <?php echo $column_left; ?>


</div>


<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').addClass('hide');
        $('.product-list').removeClass('hide');
		
		$('.display').html('<div class="f_left"><?php echo $text_display; ?><\/div> <span class="display-list">&nbsp;<\/span>  <a class="display-grid" onclick="display(\'grid\');">&nbsp;</a><div class="clear"><\/div>');
		
		$.totalStorage('display', 'list');
	} else {
		$('.product-list').addClass('hide');
$('.product-grid').removeClass('hide');
$('.display').html('<div class="f_left"><?php echo $text_display; ?><\/div> <a class="display-list" onclick="display(\'list\');">&nbsp;</a>  <span class="display-grid"><\/span><div class="clear"><\/div>');
		
		$.totalStorage('display', 'grid');
		
		var colH = 0;
		$('.product-grid .grid_row').each(function(){
			colH = 0;
			$('.grid_item', $(this)).each(function(){
				if(parseInt($(this).height()) > colH){
					colH = $(this).height();
				}
			});
			$('.grid_item', $(this)).height(colH);
		});
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('grid');
}
//--></script> 
<?php echo $footer; ?>