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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/testimonial.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="location = '<?php echo $module; ?>';" class="button"><span><?php echo $button_module; ?></span></a><a onclick="location = '<?php echo $insert; ?>'" class="button"><span><?php echo $button_insert; ?></span></a><a onclick="$('#form').submit();" class="button"><span><?php echo $button_delete; ?></span></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="left"><?php if ($sort == 'firstname') { ?>
                <a href="<?php echo $sort_firstname; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_firstname; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_firstname; ?>"><?php echo $column_firstname; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'lastname') { ?>
                <a href="<?php echo $sort_lastname; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_lastname; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_lastname; ?>"><?php echo $column_lastname; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'email') { ?>
                <a href="<?php echo $sort_email; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_email; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_email; ?>"><?php echo $column_email; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'website') { ?>
                <a href="<?php echo $sort_website; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_website; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_website; ?>"><?php echo $column_website; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'status') { ?>
                <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'rating') { ?>
                <a href="<?php echo $sort_rating; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_rating; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_rating; ?>"><?php echo $column_rating; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'featured') { ?>
                <a href="<?php echo $sort_featured; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_featured; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_featured; ?>"><?php echo $column_featured; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'sort_order') { ?>
                <a href="<?php echo $sort_sort_order; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_sort_order; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_sort_order; ?>"><?php echo $column_sort_order; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'date_added') { ?>
                <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_added; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_date_added; ?>"><?php echo $column_date_added; ?></a>
                <?php } ?></td>
              <td class="right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($testimonials) { ?>
            <?php foreach ($testimonials as $testimonial) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($testimonial['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $testimonial['testimonial_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $testimonial['testimonial_id']; ?>" />
                <?php } ?></td>
              <td class="left"><?php echo $testimonial['firstname']; ?></td>
              <td class="left"><?php echo $testimonial['lastname']; ?></td>
              <td class="left"><a href="mailto:<?php echo $testimonial['email']; ?>"><?php echo $testimonial['email']; ?></a></td>
              <td class="left"><a onclick="window.open('<?php echo $testimonial['website']; ?>');"><?php echo $testimonial['website']; ?></a></td>
              <td class="left"><?php echo $testimonial['status']; ?></td>
              <td class="left"><?php echo $testimonial['rating']; ?></td>
              <td class="left"><?php echo $testimonial['featured']; ?></td>
              <td class="left"><?php echo $testimonial['sort_order']; ?></td>
              <td class="left"><?php echo $testimonial['date_added']; ?></td>
              <td class="right"><?php foreach ($testimonial['action'] as $action) { ?>
                [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                <?php } ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="11"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
