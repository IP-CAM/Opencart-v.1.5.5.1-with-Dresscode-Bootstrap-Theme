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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/user.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div id='basic-modal1' class="buttons"><a class="button" onclick="javascript:window.location.reload();" href="javascript:void(0);"><span>Refresh</span></a><a onclick="openmodel();" href="javascript:void(0);" class="button basic"><span><?php echo $add_new; ?></span></a></div>
    </div>
    <div class="content" align="center">
      <table border="0" width="45%">
        <tr style="font-weight:bold;font-size:16px;text-align:center;">
          <td align="center" style="width:100px;text-decoration:underline;">Maker Name</td>
          <td align="center" style="width:100px;text-decoration:underline;">Model Name</td>
		  <td align="center" style="width:100px;text-decoration:underline;">Created Date</td>
          <td align="center" style="width:25px;">&nbsp;</td>
          <td align="center" style="width:25px;">&nbsp;</td>
        </tr>
        <?php if(isset($model)){foreach ($model as $models) { ?>
        <tr style="text-align:center;">
          <td><?php echo $models['MakeName']; ?></td>
		  <td><?php echo $models['ModelName']; ?></td>
          <td align="center"><?php echo $models['CreatedDate']; ?></td>
          <td><a href="javascript:void(0);" onclick="editModel(<?php echo $models['modelId']; ?>);" title="edit"><img src="view/image/edit.jpg"></a></td>
          <td><a href="javascript:void(0);" onclick="deleteModel(<?php echo $models['modelId']; ?>);" title="delete"><img src="view/image/delete.jpg"></a></td>
        </tr>
        <?php }} ?>
      </table>
    </div>
  </div>
</div>
<div id="basic-modal-content" style="display:none;">
  <div id='stitle' style="font-size:17px;color:red;font-weight:bold;text-align:center;text-decoration:underline;margin-bottom:10px;margin-left:15px;">Add new Model</div>
  <form id="addModel">
  <table id="tblSup" align="center">
    <tr>
      <td>Maker Name:</td>
      <td id="mopt"><?php echo $make?></td>
    </tr>
	<tr>
      <td>Model Name:</td>
      <td><input type="text" size="30" name="txtModelName" id="txtModelName" /><span>*</span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>
	  	<input type="button" style='display:none;' id="btnSave" name="btnSave" onclick="InsertModel();" value="Save" />
		<input type="button" id="btUpdate" onclick="updateModel();" style='display:none;' name="btUpdate" value="Update" />
	  </td>
    </tr>
  </table>
  </form>
  <span id="imgsProcess"></span> </div>
<div id="dialog-modal" title="Product Options"> <span id="imgsProcess2"></span> </div>
<script type="text/javascript">
	function openmodel(){
		jQuery('#stitle').html('Add new Model');
		jQuery('#btnSave').show();
		jQuery('#btUpdate').hide();
		jQuery('#txtModelName').val('');
		getMakeValue();
		$('#basic-modal-content').modal();
	}
	
	function getMakeValue(){
		$.ajax({
        type: "POST",
		url: 'utility/insertModel.php?flag=5',
        success: function(msg){
			jQuery('#mopt').html('');
			jQuery('#mopt').html(msg);
        	}
   		});
	}
	
	function editModel(mId){
		$.ajax({
        type: "POST",
		url: 'utility/insertModel.php?flag=3' + '&mId=' + mId,
        success: function(msg){
			  $str = msg.split(':');
			  jQuery('#stitle').html('Update Model');
			  jQuery('#btnSave').hide();
			  jQuery('#btUpdate').show();
			  jQuery('#mopt').html('');
			  jQuery('#mopt').html($str[0]);
			  jQuery('#txtModelName').val($str[1]);
			  jQuery('#hfSID').val(mId);
			  $('#basic-modal-content').modal();
        }
   		});
	}
	
	function updateModel(){
		var mId = document.getElementById('hfSID').value;
		if(mId > 0){
		var sReturn = validation()
		if(sReturn){
		$.ajax({
        type: "POST",
		url: 'utility/insertModel.php?flag=4' + '&mId=' + mId,
		data:$('#addModel').serialize(),
        success: function(msg){
              alert("Update Model Successfully");
			  window.location.reload();
        }
   		});
		}
		}
	}
	
	function InsertModel(){
		var sReturn = validation()
		if(sReturn){
		$.ajax({
        type: "POST",
		url: "utility/insertModel.php?flag=1",
		data:$('#addModel').serialize(),
        success: function(msg){
              alert("Insert Model Successfully");
			  jQuery('#txtModelName').val('');
			   jQuery('#txtModelName').focus();
			  //window.location.reload();
        	}
   			});
		  }
		}
	
	function deleteModel(mId)
	{
		var iAnswer = confirm('Are you sure you want to delete this Model?');
		if(iAnswer)
		{
    	$.ajax({
        type: "POST",
		url: 'utility/insertModel.php?flag=2' + '&mId=' + mId,
        success: function(msg){
             window.location.reload();
        }
   		});
		}
		else
		{
			return false;
		}
	}
	
	function validation(){
		if(jQuery('#optMake').val() == "-1"){
			alert("Select Make");
			return false;
		}
		else if(jQuery('#txtModelName').val() == ''){
			alert("Maker Name Required !!!");
			jQuery('#txtModelName').focus();
			return false;
		}
		else{
			return true;
		}
	}
	

</script>
<script type="text/javascript" src="../catalog/view/javascript/jquery.simplemodal.js"></script>
<link rel="stylesheet" type="text/css" href="../catalog/view/theme/default/stylesheet/basic.css" />
<style type="text/css">
	.ui-dialog{
		z-index:100000000 !important;
		background:#E2E2DB !important;
	}
	#tblSup span{
		color:red;
		font-weight:bold;
		font-size:15px;
		padding-left:5px;
		vertical-align:top;
	}
	#simplemodal-container{
		border-radius:10px;
	}
</style>
<input type="hidden" id="hfSID" name="hfSID" value="0" />
<?php echo $footer; ?> 