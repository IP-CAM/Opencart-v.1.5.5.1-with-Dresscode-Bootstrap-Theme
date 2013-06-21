<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="content" id="testimonials">
    <?php $padding = '0'; ?>
    <?php if ($testimonials) { ?>
    <ul>
      <?php foreach ($testimonials as $testimonial) { ?>
      <li>
        <div style="min-height: <?php echo $display_photo ? $photo_size : 0; ?>px;">
          <?php $padding_left = '0'; ?>
          <?php if ($display_photo) { ?>
            <img style="float: left;" src="<?php echo $testimonial['photo']; ?>" title="<?php echo $testimonial['name']; ?>" alt="<?php echo $testimonial['name']; ?>" />
            <?php $padding_left = (int)$photo_size + 10; ?>
          <?php } ?>
          <?php if ($testimonial['website']) { ?>
            <p style="padding-left: <?php echo $padding_left; ?>px; margin-bottom: 5px;"><a onclick="window.open('<?php echo $testimonial['website']; ?>');"><b><?php echo $testimonial['name']; ?></b></a>
          <?php } else { ?>
            <p style="padding-left: <?php echo $padding_left; ?>px; margin-bottom: 5px;"><b><?php echo $testimonial['name']; ?></b>
          <?php } ?>
          <?php
            $company = $testimonial['company'];
            $title = $testimonial['title'];
            $attr = (($company && $title) ? $company . ' - ' . $title : ($company ? $company : ($title ? $title : '')));
            echo (!empty($attr) ? '&#160;' . $attr . '&#160;' : '');
          ?>
          <?php if ($display_rating) { ?>
            | <img src="catalog/view/theme/<?php echo $template; ?>/image/stars-<?php echo $testimonial['rating'] . '.png'; ?>" alt="<?php echo $testimonial['stars']; ?>" />
          <?php } ?></p>
          <p style="padding-left: <?php echo $padding_left; ?>px;"><?php echo $testimonial['testimony']; ?> &hellip; <a onclick="location = '<?php echo $testimonial['href']; ?>'"><?php echo $text_more; ?></a></p>
        </div>
      </li>
      <?php } ?>
    </ul>
    <?php } else { ?>
    <span><?php echo $text_no_testimonials; ?></span>
    <?php } ?>
    <div class="pagination"><?php echo $pagination; ?></div>
  </div>
  <div class="buttons">
    <div class="right"><a onclick="location = '<?php echo $testify; ?>'" class="button"><span><?php echo $button_testify; ?></span></a>&nbsp;&nbsp;<a onclick="location = '<?php echo $continue; ?>'" class="button"><span><?php echo $button_continue; ?></span></a></div>
  </div>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
