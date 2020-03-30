<?php
session_start();
error_reporting(0);
include("include/config.php");
if(isset($_POST['submit']))
{
	$username=$_POST['username'];
	$password=md5($_POST['password']);
$ret=mysqli_query($con,"SELECT * FROM engineer WHERE username='$username' and password='$password'");
$num=mysqli_fetch_array($ret);
if($num>0)
{
	$extra="change-password.php";//
	$_SESSION['alogin']=$_POST['username'];
	$_SESSION['id']=$num['id'];
	$host=$_SERVER['HTTP_HOST'];
	$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
	header("location:http://$host$uri/$extra");
	exit();
	}
	else
	{
	$_SESSION['errmsg']="Invalid username or password";
	$extra="index.php";
	$host  = $_SERVER['HTTP_HOST'];
	$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
	header("location:http://$host$uri/$extra");
	exit();
	}
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
	<title>Engineer Complaint Portal | Sign In</title>
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">


    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
<script type="text/javascript">
function valid()
{
 if(document.forgot.password.value!= document.forgot.confirmpassword.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.forgot.confirmpassword.focus();
return false;
}
return true;
}
</script>
  </head>

  <body oncontextmenu="return false;">

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  		<h3 align="center" style="color:#fff"><img src="../img/logo.png" style="height:80px; width:80px;">Engineer Complaint Portal</h3>
	<hr />
		      <form class="form-login" name="login" method="post">
		        <h2 class="form-login-heading">Sign In</h2>
		        <p style="padding-left:4%; padding-top:2%;  color:red">
				<?php echo htmlentities($_SESSION['errmsg']); ?>
				<?php echo htmlentities($_SESSION['errmsg']="");?>			
					</p>
		        <div class="login-wrap">
		            <input type="text" class="form-control" name="username" placeholder="User ID"  required autofocus>
		            <br>
		            <input type="password" class="form-control" name="password" required placeholder="Password">
		            <label class="checkbox">
		                
		            </label>
		            <button class="btn btn-theme btn-block" name="submit" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>
		            <hr>
		           </form>  
					</div>
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("images/s1.jpg", {speed: 500});
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
