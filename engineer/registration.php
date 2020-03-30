<?php
include('include/config.php');
error_reporting(0);
if(isset($_POST['submit']))
{
	$eid=$_POST['engid'];
	$eusername=$_POST['username'];
	$eemail=$_POST['email'];
	$econtact=$_POST['contact'];
	$epassword=md5($_POST['password']);
	$query=mysqli_query($con,"insert into engineer(engid,username,email,contact,password) values('$eid','$eusername','$eemail','$econtact','$epassword')");
	$msg="Registration successfull. Now You can login !";
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title> Engineer Complaint Portal | Registration</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "../engineer/check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#engineer-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
  </head>

  <body oncontextmenu="return false;">
	  <div id="login-page">
	  	<div class="container">
		  <h3 align="center" style="color:#fff"><img src="../img/logo.png" style="height:80px; width:80px;">CP IT Complaint Portal</h3>
	<hr />
		      <form class="form-login" method="post">
		        <h2 class="form-login-heading">Engineer Registration</h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){
echo htmlentities($msg);
//("location:index.php");
		        		}?>


		        </p>
		        <div class="login-wrap">
				<input type="twxt" class="form-control" placeholder="Employee ID" name="engid" required="required" autofocus>	
				<br>		 
				<input type="text" class="form-control" placeholder="Username" name="username" required="required" autofocus>
		            <br>
		            <input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
		             <span id="engineer-availability-status1" style="font-size:12px;"></span>
				   <br>
				<input type="text" class="form-control" placeholder="Contact No." name="contact" required="required" autofocus>
					 <br>
		            <input type="password" class="form-control" placeholder="Password" required="required" name="password"><br >
		            <br>		            
		            <button class="btn btn-theme btn-block"  type="submit" name="submit" id="submit"> Register</button>
		            <br>
		            
		            <div class="registration">
		                Already Registered<br/>
		                <a class="" href="index.php">
		                   Sign in
		                </a>
		            </div>
		
		        </div>
		
		      
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("../img/s1.jpg", {speed: 500});
    </script>


  </body>
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
</html>
