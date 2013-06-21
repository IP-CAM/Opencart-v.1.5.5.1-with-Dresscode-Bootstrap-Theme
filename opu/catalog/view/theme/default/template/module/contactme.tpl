<?php
// ------------------------------------------------------
// ContactMe for Opencart v1.5++
// By MarketInSG
// contact@marketinsg.com
// ------------------------------------------------------
?>

<!-- 
This module, ContactMe, is by MarketInSG (http://www.marketinsg.com)
//-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/contactme.css" />
		<div style="<?php if ($display) { echo "left:-245px"; } else { echo "right:-245px"; } ?>; top:<?php echo $placing; ?>px;" id="cbox" />
			<img id="contact_img" style="<?php if ($display) { echo "right:-39px"; } else { echo "left:-39px"; } ?>" src="catalog/view/theme/default/image/c_logo_<?php if ($display) { echo "l"; } else { echo "r"; } ?>.png" alt="" />
			<table class="cbox"><tr><td class="address-h">Address:</td></tr>
			<tr><td class="address"><?php echo $store; ?><br /><?php echo $address; ?></td></tr>
			<tr><td>&nbsp;</td></tr>
			<tr><td class="tele-h">Telephone</td></tr>
			<tr><td class="tele"><?php echo $telephone; ?></td></tr>
			</table>
		</div>

<script>
jQuery(document).ready(function(){
jQuery("#cbox").hover(function(){ jQuery(this).stop(true,false).animate({<?php if ($display) {echo "left"; } else { echo"right"; } ?>:  0}, 500); },function(){ jQuery("#cbox").stop(true,false).animate({<?php if ($display) {echo "left"; } else { echo"right"; } ?>: -245}, 500); });
});
</script>
