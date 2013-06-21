<?php echo $header; ?>
<div class="display_block">
    <?php include('breadcrumbs.php'); ?>
</div>

<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <b><?php echo $text_critea; ?></b>
  <div class="content">
    <p>
	   <div class="search_criteria">
          <div class="title_search">
            <?php echo $entry_search; ?>
          </div>
          <div class="input_search">
            <?php if ($search) { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" />
      <?php } else { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
      <?php } ?>
          </div>

          <div class="dropdown_search">
            <select name="category_id">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
          </div>

          <div class="checkbox_search">
              <?php if ($sub_category) { ?>
                <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
              <?php } else { ?>
                <input type="checkbox" name="sub_category" value="1" id="sub_category" />
              <?php } ?>
              <label for="sub_category"><?php echo $text_sub_category; ?></label>
          </div>
          <div class="clear"></div>
      </div>
	  
	  
    </p>
    <?php if ($description) { ?>
    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="description" value="1" id="description" />
    <?php } ?>
    <label for="description"><?php echo $entry_description; ?></label>
  </div>
  <div class="buttons">
    <div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
  </div>
  <h2><?php echo $text_search; ?></h2>
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
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

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