<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
  { 
header('location:index.php');
}
else {
  if(isset($_POST['update']))
  {
$complaintnumber=$_GET['cid'];
$status=$_POST['status'];
$assigned=$_POST['assigned'];
$remark=$_POST['remark'];
$eid=$_POST['eid'];
$query=mysqli_query($con,"insert into complaintremark(complaintNumber,status,assigned,remark) values('$complaintnumber','$status','$assigned','$remark')");
$sql=mysqli_query($con,"update tblcomplaints set status='$status' where complaintNumber='$complaintnumber'");
$sqll=mysqli_query($con,"update tblcomplaints set assigned='$assigned' where complaintNumber='$complaintnumber'");
$sqlll=mysqli_query($con,"update tblcomplaints set eid='$eid' where complaintNumber='$complaintnumber'");


echo "<script>alert('Complaint details updated successfully');</script>";

  }

 ?>
<script language="javascript" type="text/javascript">
function f2()
{
window.close();
}ser
function f3()
{
window.print(); 
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>User Profile</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="anuj.css" rel="stylesheet" type="text/css">
</head>
<body oncontextmenu="return false;">

<div style="margin-left:50px;">
 <form name="updateticket" id="updatecomplaint" method="post"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td  >&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr height="50">
      <td><b>Complaint Number</b></td>
      <td><?php echo htmlentities($_GET['cid']); ?></td>
    </tr>
    <tr height="50">
      <td><b>Status</b></td>
      <td><select name="status" required="required">
      <option value="">Select Status</option>
      <option value="in process">In Process</option>
    <option value="closed">Closed</option>
        
      </select></td>
    </tr>
    <tr height="50">
      <td><b>Assigned To</b></td>
      <td><select name="assigned" required="required">
      <option value="">Select Engineer</option>
      <option value="haseeb">haseeb</option>
    <option value="younus">younus</option>
    <option value="tahir">tahir</option>
        
      </select></td>
    </tr>

    <tr height="50">
      <td><b>Eng ID</b></td>
      <td><select name="eid" required="required">
      <option value="">Select ID</option>
      <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
        
      </select></td>
    </tr>



      <tr height="50">
      <td><b>Remark</b></td>
      <td><textarea name="remark" cols="50" rows="10" required="required"></textarea></td>
    </tr>
    


        <tr height="50">
      <td>&nbsp;</td>
      <td><input type="submit" name="update" value="Submit"></td>
    </tr>



       <tr><td colspan="2">&nbsp;</td></tr>
    
    <tr>
  <td></td>
      <td >   
      <input name="Submit2" type="submit" class="txtbox4" value="Close this window " onClick="return f2();" style="cursor: pointer;"  /></td>
    </tr>
   

 
</table>
 </form>
</div>

</body>
</html>
<script>
  document.onkeydown=function(e)
{
 if(event.keyCode == 123)
 {
  return false;
 }

 if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0))
 {
  return false;
 }

 if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0))
 {
  return false;
 }

 if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0))
 {
  return false;
 }
}

  </script>
     <?php } ?>