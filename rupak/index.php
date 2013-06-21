<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Phone Number</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>

<body>
<?php 
//error_reporting(0);
$success='';
if(isset($_POST['tel'])){

	$noofdigit=strlen($_POST['tel']);
	if($noofdigit=='8'){
		$firtword=substr($_POST['tel'], 0, 1);
	
		if($firtword=='8' || $firtword=='9'){
			$mail=mail('rupaknpl@gmail.com', 'hi admin, handphone number '.$_POST['tel'].' has registered', 'hi admin, handphone number '.$_POST['tel'].' has registered');
			if($mail){
				$success="Thanks, we will contact you very shortly for account opening!";
			}else{
				$success="Some mailing problem arises!";
			}
		}else{
			$success="This is an invalid handphone number";
		}
	}
	else{
			$success="This is an invalid handphone number";
	}
}
?>
<form action="index.php" method="post" enctype="multipart/form-data" id="form">
<div style="width: 100%;  ">
<div class="container" style="margin:0px auto ;width:300px;">
 <div style="width: 100%; height:152px; background-image:url(images/number.png); background-repeat:no-repeat; background-position:center;">
 
 <div class="msg" align="center">
 <p style="width:250px; color:#FFFFFF;"><span style="position:absolute;background-color:#00CC66; width: 250px;margin-left: -125px;"><?php if(isset($_POST)){ echo $success;} ?></span></p>
 </div> 
 
 <div class="tel" align="center">
 <input type="text" name="tel" value="<?php if(isset($_POST['tel'])){ echo $_POST['tel'];} ?>" onkeypress=''>
 </div>
  <div class="submitbtn"  align="center">
 <input type="image" src="images/button.png" onmouseover="this.src='images/hover.png'" onmouseout="this.src='images/button.png'" value="login" name="submit" />
 
 </div>
 
 </div>
 </div>
       
</div>              
</form>

</body>
</html>
