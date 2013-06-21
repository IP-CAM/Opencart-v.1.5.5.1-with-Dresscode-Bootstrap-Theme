<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/testimonial.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><?php echo $entry_testimonial_id; ?></td>
            <td><span><?php echo ($testimonial_id ? $testimonial_id : $text_empty); ?></span></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
            <td><input type="text" name="firstname" value="<?php echo $firstname?>" />
              <?php if ($error_firstname) { ?>
              <span class="error"><?php echo $error_firstname; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
            <td><input type="text" name="lastname" value="<?php echo $lastname?>" />
              <?php if ($error_lastname) { ?>
              <span class="error"><?php echo $error_lastname; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_email; ?></td>
            <td><input type="text" name="email" value="<?php echo $email?>" size="50"	/>
              <?php if ($error_email) { ?>
              <span class="error"><?php echo $error_email; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_website; ?></td>
            <td><input type="text" name="website" value="<?php echo $website?>" size="50"/></td>
          </tr>
          <tr>
            <td><?php echo $entry_company; ?></td>
            <td><input type="text" name="company" value="<?php echo $company?>" size="50"/></td>
          </tr>
          <tr>
            <td><?php echo $entry_title; ?></td>
            <td><input type="text" name="title" value="<?php echo $title?>" size="50"/></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_testimony; ?></td>
            <td><textarea name="testimony" cols="60" rows="8"><?php echo $testimony; ?></textarea>
              <?php if ($error_testimony) { ?>
              <span class="error"><?php echo $error_testimony; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_rating; ?></td>
            <td><b class="rating"><?php echo $text_bad; ?></b>&nbsp;
              <?php if ($rating == 1) { ?>
              <input type="radio" name="rating" value="1" checked />
              <?php } else { ?>
              <input type="radio" name="rating" value="1" />
              <?php } ?>
              &nbsp;
              <?php if ($rating == 2) { ?>
              <input type="radio" name="rating" value="2" checked />
              <?php } else { ?>
              <input type="radio" name="rating" value="2" />
              <?php } ?>
              &nbsp;
              <?php if ($rating == 3) { ?>
              <input type="radio" name="rating" value="3" checked />
              <?php } else { ?>
              <input type="radio" name="rating" value="3" />
              <?php } ?>
              &nbsp;
              <?php if ($rating == 4) { ?>
              <input type="radio" name="rating" value="4" checked />
              <?php } else { ?>
              <input type="radio" name="rating" value="4" />
              <?php } ?>
              &nbsp;
              <?php if ($rating == 5) { ?>
              <input type="radio" name="rating" value="5" checked />
              <?php } else { ?>
              <input type="radio" name="rating" value="5" />
              <?php } ?>
              &nbsp; <b class="rating"><?php echo $text_good; ?></b>
              <?php if ($error_rating) { ?>
              <span class="error"><?php echo $error_rating; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="status">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_language; ?></td>
            <td><select name="language_code">
                <?php foreach ($languages as $language) { ?>
                <?php if ($language['code'] == $language_code) { ?>
                <option value="<?php echo $language["code"]; ?>" selected="selected"><?php echo $language["name"]; ?></option>
                <?php } else { ?>
                <option value="<?php echo $language["code"]; ?>"><?php echo $language["name"]; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_featured; ?></td>
            <td><?php if ($featured) { ?>
              <input type="radio" name="featured" value="1" checked="checked" />
              <?php echo $text_yes; ?>
              <input type="radio" name="featured" value="0" />
              <?php echo $text_no; ?>
              <?php } else { ?>
              <input type="radio" name="featured" value="1" />
              <?php echo $text_yes; ?>
              <input type="radio" name="featured" value="0" checked="checked" />
              <?php echo $text_no; ?>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_photo; ?></td>
            <td valign="top"><div class="image"><img src="<?php echo $thumb; ?>" alt="" id="thumb" />
              <input type="hidden" name="image" value="<?php echo $image; ?>" id="image" />
              <br /><a onclick="image_upload('image', 'thumb');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb').attr('src', '<?php echo $no_photo; ?>'); $('#image').attr('value', '');"><?php echo $text_clear; ?></a></div></td>
          </tr>
          <tr>
            <td><?php echo $entry_store; ?></td>
            <td>
              <div class="scrollbox">
                <?php $class = 'even'; ?>
                <div class="<?php echo $class; ?>">
                  <?php if (in_array(0, $testimonial_store)) { ?>
                  <input type="checkbox" name="testimonial_store[]" value="0" checked="checked" />
                  <?php echo $text_default; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="testimonial_store[]" value="0" />
                  <?php echo $text_default; ?>
                  <?php } ?>
                </div>
                <?php foreach ($stores as $store) { ?>
                <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                <div class="<?php echo $class; ?>">
                  <?php if (in_array($store['store_id'], $testimonial_store)) { ?>
                  <input type="checkbox" name="testimonial_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                  <?php echo $store['name']; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="testimonial_store[]" value="<?php echo $store['store_id']; ?>" />
                  <?php echo $store['name']; ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="sort_order" value="<?php echo $sort_order?>" size="5"/></td>
          </tr>
          <tr>
            <td><?php echo $entry_date_added; ?></td>
            <td><span><?php echo ($date_added ? $date_added : $text_empty); ?></span></td>
          </tr>
          <tr>
            <td><?php echo $entry_date_modified; ?></td>
            <td><span><?php echo ($date_modified ? $date_modified : $text_empty); ?></span></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();

	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');

	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<?php echo $footer; ?>
