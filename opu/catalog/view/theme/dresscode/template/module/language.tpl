 <div id="language">
            <?php //if (count($languages) > 1) { ?>
                 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                     <div>
                         <?php foreach ($languages as $language) { ?>
                         <a onClick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().submit();">
                            <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
                         </a>
                         <?php } ?>
                         <input type="hidden" name="language_code" value="" />
                         <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                     </div>
                 </form>
            <?php //} ?>
		 </div>




