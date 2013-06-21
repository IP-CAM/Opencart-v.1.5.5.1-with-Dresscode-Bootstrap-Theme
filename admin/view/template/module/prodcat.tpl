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
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
          
        <div class="vtabs">
          <?php $module_row = 1; ?>
          <?php foreach ($modules as $module) { ?>
          <a href="#tab-module-<?php echo $module_row; ?>" id="module-<?php echo $module_row; ?>"><?php echo $tab_module . ' ' . $module_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#module-<?php echo $module_row; ?>').remove(); $('#tab-module-<?php echo $module_row; ?>').remove(); return false;" /></a>
          <?php $module_row++; ?>
          <?php } ?>
          <span id="module-add"><?php echo $button_add_module; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addModule();" /></span> </div>
        <?php $module_row = 1; ?>
        <?php foreach ($modules as $module) { ?>
        <div id="tab-module-<?php echo $module_row; ?>" class="vtabs-content">
          <div id="language-<?php echo $module_row; ?>" class="htabs">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab-language-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab-language-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_description; ?></td>
                <td><textarea name="prodcat_module[<?php echo $module_row; ?>][description][<?php echo $language['language_id']; ?>]" id="description-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>"><?php echo isset($module['description'][$language['language_id']]) ? $module['description'][$language['language_id']] : ''; ?></textarea></td>
              </tr>
            </table>
          </div>
          <?php } ?>
          <table class="form">
            <tr>
              <td><?php echo $entry_heading_title; ?></td>
              <td><input type="text" name="prodcat_module[<?php echo $module_row; ?>][heading_title]" value="<?php echo $module['heading_title']; ?>"  size="100"/></td>
            </tr>
            <tr>
              <td><?php echo $entry_heading_param; ?></td>
              <td><input type="text" name="prodcat_module[<?php echo $module_row; ?>][heading_param]" value="<?php echo $module['heading_param']; ?>"  size="100"/></td>
            </tr>
            <tr>
              <td><?php echo $entry_selectcategories; ?></td>
              <td>
                
              <div class="scrollbox">
                <?php $class = 'odd'; ?>
                <?php foreach ($categories as $category) { ?>
                <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                <div class="<?php echo $class; ?>">
                  <?php if (!empty($module['categories']) && in_array($category['category_id'], $module['categories'])) { ?>
                  <input type="checkbox" name="prodcat_module[<?php echo $module_row; ?>][categories][]" value="<?php echo $category['category_id']; ?>" checked="checked" />
                  <?php echo $category['name']; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="prodcat_module[<?php echo $module_row; ?>][categories][]" value="<?php echo $category['category_id']; ?>" />
                  <?php echo $category['name']; ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
               
              <a onclick="$(this).parent().find(':checkbox').attr('checked', false);"><?php echo $text_unselect_all; ?></a></td>
            
            </tr>
 
            
            <tr>
              <td><?php echo $entry_lastlevelcategory; ?></td>
              <td>
              <?php if (!empty($module['lastlevelcategory']) && $module['lastlevelcategory']) { ?>
              <input type="radio" name="prodcat_module[<?php echo $module_row; ?>][lastlevelcategory]" value="1" checked="checked" />
              <?php echo $text_yes; ?>
              <input type="radio" name="prodcat_module[<?php echo $module_row; ?>][lastlevelcategory]" value="0" />
              <?php echo $text_no; ?>
              <?php } else { ?>
              <input type="radio" name="prodcat_module[<?php echo $module_row; ?>][lastlevelcategory]" value="1" />
              <?php echo $text_yes; ?>
              <input type="radio" name="prodcat_module[<?php echo $module_row; ?>][lastlevelcategory]" value="0" checked="checked" />
              <?php echo $text_no; ?>
              <?php } ?>
                  
            </tr>
            <tr>
              <td><?php echo $entry_layout; ?></td>
              <td><select name="prodcat_module[<?php echo $module_row; ?>][layout_id]">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_column_count; ?></td>
              <td><input type="text" name="prodcat_module[<?php echo $module_row; ?>][column_count]" value="<?php echo $module['column_count']; ?>" size="2" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_tableparam; ?></td>
              <td><input type="text" name="prodcat_module[<?php echo $module_row; ?>][tableparam]" value="<?php echo $module['tableparam']; ?>" size="100" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_trparam; ?></td>
              <td><input type="text" name="prodcat_module[<?php echo $module_row; ?>][trparam]" value="<?php echo $module['trparam']; ?>" size="100" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_tdparam; ?></td>
              <td><input type="text" name="prodcat_module[<?php echo $module_row; ?>][tdparam]" value="<?php echo $module['tdparam']; ?>" size="100" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_aparam; ?></td>
              <td><input type="text" name="prodcat_module[<?php echo $module_row; ?>][aparam]" value="<?php echo $module['aparam']; ?>" size="100" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_position; ?></td>
              <td><select name="prodcat_module[<?php echo $module_row; ?>][position]">
                  <?php if ($module['position'] == 'content_top') { ?>
                  <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                  <?php } else { ?>
                  <option value="content_top"><?php echo $text_content_top; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'content_bottom') { ?>
                  <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                  <?php } else { ?>
                  <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                  <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                  <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="prodcat_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_sort_order; ?></td>
              <td><input type="text" name="prodcat_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
            </tr>
          </table>
        </div>        

        <?php $module_row++; ?>
        <?php } ?>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript">
 $(document).ready(function() {
  
  $(".scrollbox input[type=checkbox]").click(function () {
  
    if($(".scrollbox input[type=checkbox]").filter(':checked').length>1000){
    
    $(this).attr('checked', false);
    alert('You can\'t select more than 1000 categories due to performance.');
    }

    //$('li').toggleClass('disabled', !$(':checkbox:checked').length);
});

 });

</script> 


<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
<?php $module_row = 1; ?>
<?php foreach ($modules as $module) { ?>
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('description-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
<?php $module_row++; ?>
<?php } ?>
//--></script> 
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<div id="tab-module-' + module_row + '" class="vtabs-content">';
	html += '  <div id="language-' + module_row + '" class="htabs">';
    <?php foreach ($languages as $language) { ?>
    html += '    <a href="#tab-language-'+ module_row + '-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>';
    <?php } ?>
	html += '  </div>';

	<?php foreach ($languages as $language) { ?>
	html += '    <div id="tab-language-'+ module_row + '-<?php echo $language['language_id']; ?>">';
	html += '      <table class="form">';
	html += '        <tr>';
	html += '          <td><?php echo $entry_description; ?></td>';
	html += '          <td><textarea name="prodcat_module[' + module_row + '][description][<?php echo $language['language_id']; ?>]" id="description-' + module_row + '-<?php echo $language['language_id']; ?>"></textarea></td>';
	html += '        </tr>';
	html += '      </table>';
	html += '    </div>';
	<?php } ?>

	html += '  <table class="form">';
        html += '    <tr>';
	html += '      <td><?php echo $entry_heading_title; ?></td>';
	html += '      <td><input type="text" name="prodcat_module[' + module_row + '][heading_title]" value="Product Categories List" size="100" /></td>';
	html += '    </tr>';
        html += '    <tr>';
	html += '      <td><?php echo $entry_heading_param; ?></td>';
	html += '      <td><input type="text" name="prodcat_module[' + module_row + '][heading_param]" value="class=\'box-heading\'" size="100" /></td>';
	html += '    </tr>';
        html += '    <tr>';
        html += '          <td><?php echo $entry_selectcategories; ?></td>';
        html += '          <td>';
        html += '          <div class="scrollbox">';
        html += '            <?php $class = "odd"; ?>';
        html += '            <?php foreach ($categories as $category) { ?>';
        html += '            <?php $class = ($class == "even" ? "odd" : "even"); ?>';
        html += '            <div class="<?php echo $class; ?>">';
        html += '              <input type="checkbox" name="prodcat_module[<?php echo $module_row; ?>][categories][]" value="<?php echo $category["category_id"]; ?>" />'; 
        html += '              <?php echo $category["name"]; ?>';
        html += '            </div>';
        html += '            <?php } ?>';
        html += '          </div>';
        html += '          <a onclick="$(this).parent().find(\':checkbox\').attr(\'checked\', false);"><?php echo $text_unselect_all; ?></a></td>';
        html += '        </tr>';
        html += '    <tr>';
	html += '      <td><?php echo $entry_lastlevelcategory; ?></td>';
	html += '      <td><input type="radio" name="prodcat_module[' + module_row + '][lastlevelcategory]" value="1"/><?php echo $text_yes; ?>';
	html += '          <input type="radio" name="prodcat_module[' + module_row + '][lastlevelcategory]" value="0" checked="checked"/><?php echo $text_no; ?></td>';
        html += '    </tr>';
        html += '    <tr>';
	html += '      <td><?php echo $entry_column_count; ?></td>';
	html += '      <td><input type="text" name="prodcat_module[' + module_row + '][column_count]" value="1" size="2" /></td>';
	html += '    </tr>';
           html += '    <tr>';
	html += '      <td><?php echo $entry_tableparam; ?></td>';
	html += '      <td><input type="text" name="prodcat_module[' + module_row + '][tableparam]" value="" size="100" /></td>';
	html += '    </tr>';
           html += '    <tr>';
	html += '      <td><?php echo $entry_trparam; ?></td>';
	html += '      <td><input type="text" name="prodcat_module[' + module_row + '][trparam]" value="" size="100" /></td>';
	html += '    </tr>';
           html += '    <tr>';
	html += '      <td><?php echo $entry_tdparam; ?></td>';
	html += '      <td><input type="text" name="prodcat_module[' + module_row + '][tdparam]" value="" size="100" /></td>';
	html += '    </tr>';
           html += '    <tr>';
	html += '      <td><?php echo $entry_aparam; ?></td>';
	html += '      <td><input type="text" name="prodcat_module[' + module_row + '][aparam]" value="" size="100" /></td>';
	html += '    </tr>';
	html += '    <tr>';
	html += '      <td><?php echo $entry_layout; ?></td>';
	html += '      <td><select name="prodcat_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '           <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '      </select></td>';
	html += '    </tr>';
	html += '    <tr>';
	html += '      <td><?php echo $entry_position; ?></td>';
	html += '      <td><select name="prodcat_module[' + module_row + '][position]">';
	html += '        <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '        <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '        <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '        <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '      </select></td>';
	html += '    </tr>';
	html += '    <tr>';
	html += '      <td><?php echo $entry_status; ?></td>';
	html += '      <td><select name="prodcat_module[' + module_row + '][status]">';
	html += '        <option value="1"><?php echo $text_enabled; ?></option>';
	html += '        <option value="0"><?php echo $text_disabled; ?></option>';
	html += '      </select></td>';
	html += '    </tr>';
	html += '    <tr>';
	html += '      <td><?php echo $entry_sort_order; ?></td>';
	html += '      <td><input type="text" name="prodcat_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    </tr>';
	html += '  </table>'; 
	html += '</div>';

	
	$('#form').append(html);
	
	<?php foreach ($languages as $language) { ?>
	CKEDITOR.replace('description-' + module_row + '-<?php echo $language['language_id']; ?>', {
		filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
		filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
	});  
	<?php } ?>
	
	$('#language-' + module_row + ' a').tabs();
	
	$('#module-add').before('<a href="#tab-module-' + module_row + '" id="module-' + module_row + '"><?php echo $tab_module; ?> ' + module_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#module-' + module_row + '\').remove(); $(\'#tab-module-' + module_row + '\').remove(); return false;" /></a>');
	
	$('.vtabs a').tabs();
	
	$('#module-' + module_row).trigger('click');
	
	module_row++;
}
//--></script> 
<script type="text/javascript"><!--
$('.vtabs a').tabs();
//--></script> 
<script type="text/javascript"><!--
<?php $module_row = 1; ?>
<?php foreach ($modules as $module) { ?>
$('#language-<?php echo $module_row; ?> a').tabs();
<?php $module_row++; ?>
<?php } ?> 
//--></script> 
<?php echo $footer; ?>