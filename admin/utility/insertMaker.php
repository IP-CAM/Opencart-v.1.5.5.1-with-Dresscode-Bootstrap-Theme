<?php
	include_once ('../config.php');
	$con = mysql_connect(DB_HOSTNAME,DB_USERNAME,DB_PASSWORD);
	if (!$con)
	{
  		die('Could not connect: ' . mysql_error());
	}
	mysql_select_db(DB_DATABASE, $con);
	
	if($_GET['flag']=='1'){
		//insert
		$sql="insert into " . DB_PREFIX . "make(MakeName)values('$_POST[txtMakerName]')";
		mysql_query($sql,$con);
	}
	if($_GET['flag']=='2'){
		//delete
		$sql="Delete from " . DB_PREFIX . "make where makeId='".$_GET['mId']."'";
		mysql_query($sql,$con);
	}
	if($_GET['flag']=='3'){
		//select by make id
		$str = '';
		$result = mysql_query("select * from " . DB_PREFIX . "make where makeId='".$_GET['mId']."'");
		if($row = mysql_fetch_array($result))
		{
			$str = $row['MakeName'];
		}
		echo $str;
	}
	if($_GET['flag']=='4'){
		//update
		$sql="Update " . DB_PREFIX . "make set MakeName='$_POST[txtMakerName]' where makeId='".$_GET['mId']."'";
		mysql_query($sql,$con);
	}

?>