<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="content">
    <div style="width: 100%; margin-bottom: 10px;">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial" name="testimonial">
        <div style="margin:10px auto 20px auto;overflow:hidden">
          <div style="width:48%; float:left;" id="div-firstname">
            <b><?php echo $entry_firstname; ?></b> <span class="required">*</span><br/>
            <input type="text" name="firstname" value="<?php echo $firstname; ?>" size="30" />
          </div>
          <div style="width:48%; float:right;" id="div-lastname">
            <b><?php echo $entry_lastname; ?></b> <span class="required">*</span><br/>
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" size="30" />
          </div>
        </div>
        <b><?php echo $entry_email; ?></b> <span class="required">*</span><br/>
        <input type="text" name="testify_email" value="<?php echo $testify_email; ?>" size="64" />
        <br/><br/>
        <b><?php echo $entry_website; ?></b><br/>
        <input type="text" name="website" size="64" />
        <br/><br/>
        <b><?php echo $entry_company; ?></b><br/>
        <input type="text" name="company" size="64" />
        <br/><br/>
        <b><?php echo $entry_title; ?></b><br/>
        <input type="text" name="title" size="64" />
        <br/><br/>
        <b><?php echo $entry_testimony; ?></b> <span class="required">*</span><br/>
        <textarea name="testimony" style="width: 99%;" rows="6"></textarea>
        <br/>
        <span style="font-size: 11px;"><?php echo $text_note; ?></span><br/><br/>
        <b><?php echo $entry_rating; ?></b> <span><?php echo $text_bad; ?></span>&nbsp;
        <input type="radio" name="rating" value="1" style="margin: 0;" />
        &nbsp;
        <input type="radio" name="rating" value="2" style="margin: 0;" />
        &nbsp;
        <input type="radio" name="rating" value="3" style="margin: 0;" />
        &nbsp;
        <input type="radio" name="rating" value="4" style="margin: 0;" />
        &nbsp;
        <input type="radio" name="rating" value="5" style="margin: 0;" checked="true" />
        &nbsp;<span><?php echo $text_good; ?></span>
        <br/><br/>
        <b><?php echo $entry_captcha; ?></b><br />
        <input type="text" name="captcha" value="" autocomplete="off" />
        <br />
        <img src="index.php?route=information/testimonial/captcha" id="captcha" />
      </form>
    </div>
  </div>
  <div class="buttons">
    <div class="right"><a onclick="testify();" class="button" id="save_button"><span><?php echo $button_save; ?></span></a>&nbsp;&nbsp;<a onclick="location = '<?php echo $cancel; ?>';" class="button" id="cancel_button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <?php echo $content_bottom; ?>
</div>
<script type="text/javascript"><!--
function testify() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=information/testimonial/write',
		dataType: 'json',
		data: 'firstname=' + encodeURIComponent($('input[name=\'firstname\']').val()) + 
			'&lastname=' + encodeURIComponent($('input[name=\'lastname\']').val()) + 
			'&testify_email=' + encodeURIComponent($('input[name=\'testify_email\']').val()) + 
			'&website=' + encodeURIComponent($('input[name=\'website\']').val()) + 
			'&company=' + encodeURIComponent($('input[name=\'company\']').val()) + 
			'&title=' + encodeURIComponent($('input[name=\'title\']').val()) + 
			'&testimony=' + encodeURIComponent($('textarea[name=\'testimony\']').val()) + 
			'&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + 
			'&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#save_button').attr('disabled', 'disabled');
			$('#testimonial').before('<div class="wait"><img src="catalog/view/theme/<?php echo $template; ?>/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#save_button').attr('disabled', '');
			$('.wait').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#testimonial').before('<div class="warning">' + data.error + '</div>');
			}

			if (data.success) {
				$('#testimonial').before('<div class="success">' + data.success + '</div>');

				$('input[name=\'firstname\']').val('');
				$('input[name=\'lastname\']').val('');
				$('input[name=\'testify_email\']').val('');
				$('input[name=\'website\']').val('');
				$('input[name=\'company\']').val('');
				$('input[name=\'title\']').val('');
				$('textarea[name=\'testimony\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
}
//--></script>
<?php echo $footer; ?>
