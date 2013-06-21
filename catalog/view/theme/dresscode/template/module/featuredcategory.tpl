<?php 
    if(isset($_GET['route']))
    {
        if(($_GET['route'])!='common/home'){
                
        $page='otherpage';
        }
        
        else {
        
        $page='homepage';
        }     
    }  
    
    else {
        
        $page='homepage';
        }
?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
		  <?php foreach ($categories as $category) { ?>
          <div>
		  <?php if ($category['thumb']) { ?>
			<div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" /></a></div>
			<?php } ?>
			<div class="name"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
            </div>
		  <?php } ?>
		</div>
	  </div>
  </div>