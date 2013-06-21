<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-testimonial">
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
              <p style="padding-left: <?php echo $padding_left; ?>px; margin-bottom: 5px;"><b><a onclick="window.open('<?php echo $testimonial['website']; ?>');"><?php echo $testimonial['name']; ?></a></b>
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
      <div><?php echo $text_no_testimonials; ?></div>
      <?php } ?>
      <div>
      <?php if ($enable_guest || $is_logged) { ?>
      <a href="<?php echo $testify; ?>"><span><?php echo $text_testify; ?></span></a> | 
      <?php } ?>
      <a href="<?php echo $more_testimonials; ?>"><span><?php echo $text_more_testimonials; ?></span></a>
      </div>
    </div>
  </div>
</div>
