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
		$sql="insert into " . DB_PREFIX . "model(makeId,ModelName)values('$_POST[optMake]','$_POST[txtModelName]')";
		mysql_query($sql,$con);
	}
	
	if($_GET['flag']=='2'){
		//delete
		$sql="Delete from " . DB_PREFIX . "model where modelId='".$_GET['mId']."'";
		mysql_query($sql,$con);
	}
	
	if($_GET['flag']=='3'){
		//select by model id
		$str = '';
		$makeString = '';
		$makeId;
		$result = mysql_query("select * from " . DB_PREFIX . "model where modelId='".$_GET['mId']."'");
		if($row = mysql_fetch_array($result))
		{
			$str = $row['ModelName'];
			$makeId = $row['makeId'];
		}
		
		$results = mysql_query("select * from " . DB_PREFIX . "make order by makeId ASC");
		while($rows = mysql_fetch_array($results))
		{
			if($makeId==$rows['makeId']){
				$makeString = $makeString."<option value='$rows[makeId]' selected='true'>$rows[MakeName]</option>";
			}
			else{
				$makeString = $makeString."<option value='$rows[makeId]'>$rows[MakeName]</option>";
			}
		}
		
		echo "<select name='optMake' id='optMake'><option value='-1'>--Select Model--</option>".$makeString."</select>".':'.$str;
	}
	
	if($_GET['flag']=='4'){
		$sql="Update " . DB_PREFIX . "model set ModelName='$_POST[txtModelName]',makeId='$_POST[optMake]' where modelId='".$_GET['mId']."'";
		mysql_query($sql,$con);
	}
	
	if($_GET['flag']=='5'){
		$makeString='';
		$results = mysql_query("select * from " . DB_PREFIX . "make order by makeId ASC");
		while($rows = mysql_fetch_array($results))
		{
			$makeString = $makeString."<option value='$rows[makeId]'>$rows[MakeName]</option>";
		}
		
		echo "<select name='optMake' id='optMake'><option value='-1'>--Select Model--</option>".$makeString."</select>";
	}

?>