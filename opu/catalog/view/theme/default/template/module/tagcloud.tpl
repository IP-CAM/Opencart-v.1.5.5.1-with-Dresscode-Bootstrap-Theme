<div class="box box-tags">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
      <ul id="<?php echo (($tagstack == 'animate') ? 'jcloud-tags' : 'normal-tags'); ?>">
          <?php if ($tagcloud) {
            echo $tagcloud;
        } else {
            echo $text_notags;
        } ?>
      </ul>
  </div>
</div>