  <div>
  
  <?php 
   if($thickbox) { ?>
	<a href="#frm_subscribe" title="Newsletter Subscribe" class="fancybox_sub"> <?php echo($text_subscribe); ?> </a>
  <?php }  ?>
  
  <?php if($thickbox) { ?> 
   	<div id="frm_subscribe_hidden"> 
   <?php } ?>
   
  <div id="frm_subscribe">
  <form name="subscribe" id="subscribe">

      <div class="newsletter_footer_submit"><a class="button" onclick="email_subscribe()"></a></div>
      <div class="input_bg"><input type="text" value="Newsletter sign up" name="subscribe_email" id="subscribe_email" onfocus="if(this.value=='Newsletter sign up'){this.value=''}" onblur="if(this.value==''){this.value='Newsletter sign up'}"></div>
	<div style="display:none"><input type="text" value="" name="subscribe_name" id="subscribe_name"></div>
   <?php 
     for($ns=1;$ns<=$option_fields;$ns++) {
     $ns_var= "option_fields".$ns;
   ?>
  
   
    <div>
      <?php 
       if($$ns_var!=""){
         echo($$ns_var."&nbsp;<br/>");
         echo('<input type="text" value="" name="option'.$ns.'" id="option'.$ns.'">');
       }
      ?>
     </div>

   <?php 
     }
   ?>
   
      <div id="subscribe_result"></div>

 
  </form>
  </div>
  <?php if($thickbox) { ?> </div> <?php } ?>
  </div>


<?php if(!$thickbox) { ?>
  <script type="text/javascript">
      function email_subscribe(){
			$.ajax({
					type: 'post',
					url: 'index.php?route=module/newslettersubscribe/subscribe',
					dataType: 'html',
					data:$("#subscribe").serialize(),
					success: function (html) {
						eval(html);
					}
            });
		}
		function email_unsubscribe(){
			$.ajax({
					type: 'post',
					url: 'index.php?route=module/newslettersubscribe/unsubscribe',
					dataType: 'html',
					data:$("#subscribe").serialize(),
					success: function (html) {
						eval(html);
					}
            });
		}
</script>

<?php } else { ?>
  <script language="javascript">
      function email_subscribe(){
			$.ajax({
					type: 'post',
					url: 'index.php?route=module/newslettersubscribe/subscribe',
					dataType: 'html',
					data:$("#subscribe").serialize(),
					success: function (html) {
						eval(html);
					}
            });
	  }
	  function email_unsubscribe(){
			$.ajax({
					type: 'post',
					url: 'index.php?route=module/newslettersubscribe/unsubscribe',
					dataType: 'html',
					data:$("#subscribe").serialize(),
					success: function (html) {
						eval(html);
					}
            });
	  }
  </script>

<?php } ?>

