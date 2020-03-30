<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				
				<a class="brand" href="#">
					  <img src="../img/logo.png" style="height:60px; width:60px; padding:0px 0px 0px 0px;">
			  		IT COMPLAINT PORTAL | ENGINEER
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav pull-right">
					<?php $query=mysqli_query($con,"select username from engineer where username='".$_SESSION['alogin']."'");
 						while($row=mysqli_fetch_array($query)){
							 ?>
						<li><a href="#">
						<?php echo htmlentities($row['username']);?> <b>(IT Dept)</b>
						</a></li>
						<?php } ?>
						<li class="nav-user dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img style="height:25px; width:25px;" src="images/icon.png" class="nav-avatar" />
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="change-password.php">Change Password</a></li>
								<li class="divider"></li>
								<li><a href="logout.php">Logout</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->
