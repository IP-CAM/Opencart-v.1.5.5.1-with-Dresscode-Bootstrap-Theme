<div class="box">
    <div <?php  if(!empty($heading_param)) echo $heading_param; ?>><?php  if(!empty($heading_title)) echo $heading_title; ?></div>
    <div class="box-content">
        <?php   if(!empty($description)) echo  $description.'</br>';  ?>
        <div class="box-category">
         <?php

	if (!empty($categories)) {

	    $row_count = ceil(count($categories) / $column_count);
	     
	    $table = "<TABLE " . $tableparams . ">";
	    reset($categories);
	    $cat = current($categories);
	
	    for ($row_num = 0; $row_num < $row_count; $row_num++) {
	        $table.="<TR " . $trparams . ">";
	        for ($column_num = 0; $column_num < $column_count; $column_num++) {
	            if (isset($cat['category_id'])) {
	                $href = $this->url->link('product/category', 'path=' . $cat['category_id']);
	                $table.="<TD " . $tdparams . "><a " . $aparams . " href='" . $href . "'>" . $cat['name'] . "</a></TD>";
	                $cat = next($categories);
	            }
	            
	        }
	        $table.="</TR>";
	    }
	
	    $table.="</TABLE>";
	    echo $table;
	}
	?>
        </div>
    </div>
</div>