<?php echo $header; ?>
<div class="display_block">
    <?php include('breadcrumbs.php'); ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>

  <h1><?php echo $heading_title; ?></h1>
  <?php if ($products) { ?>

    <?php include('pager.php'); ?>

    <div class="product-grid hide">
        <?php require('listing_view_grid.php'); ?>
    </div>
    <div class="product-list hide">
        <?php require('listing_view_list.php'); ?>
    </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php }?>
  <?php echo $content_bottom; ?></div>
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

        $.cookie('display', 'grid');

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