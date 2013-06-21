<?php
	include_once ('../config.php');
	$con = mysql_connect(DB_HOSTNAME,DB_USERNAME,DB_PASSWORD);
	if (!$con)
	{
  		die('Could not connect: ' . mysql_error());
	}
	mysql_select_db(DB_DATABASE, $con);
	
	if($_GET['mId'] > 0){
		$str = "";
		$result = mysql_query("select * from " . DB_PREFIX . "model where makeId='".$_GET['mId']."'");
		while($row = mysql_fetch_array($result))
		{
			$str = $str."<option value='$row[modelId]'>$row[ModelName]</option>";
		}
		echo "<option value='-1'>Select Model</option>".$str;
	}
?>