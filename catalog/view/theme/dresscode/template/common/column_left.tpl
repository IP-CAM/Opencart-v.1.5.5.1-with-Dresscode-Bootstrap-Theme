<?php if ($modules) { ?>
<div class="col-left sidebar four columns left_column">
    <div id="column-left">
      <?php foreach ($modules as $module) { ?>
      <?php echo $module; ?>
      <?php } ?>
      <?php //include('tags_flash.tpl'); ?>
    </div>
</div>
<?php } ?>
