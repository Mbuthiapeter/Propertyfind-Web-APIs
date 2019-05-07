<?php
require_once dirname(__FILE__) . '/../App/include/webHandler.php';
$db = new DbHandler();

if(isset($_REQUEST['submit']))
    {
      $uname = $db -> test_input($_POST['username']);
	
	  $pword = $db -> test_input($_POST['pass']);
	
	  $pword = md5($pword);
	
	  $auth = $db ->check_login($uname,$pword);
	
	if(isset($_SESSION["userId"])){
		header("location:../App/admin");
		
	}
	
  }
?>
<!DOCTYPE html>

<html lang="en">

<head>

	<title>Property find</title>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->	

	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

<!--===============================================================================================-->	

	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

<!--===============================================================================================-->	

	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="css/util.css">

	<link rel="stylesheet" type="text/css" href="css/main.css">

<!--===============================================================================================-->

</head>

<body>

	

	<div class="limiter">

		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">

			<div class="wrap-login100">

				<form action="" method="post" class="login100-form validate-form">

					<span class="login100-form-logo">

						<img class="round-logo" src="../logo.png">

					</span>



					<span class="login100-form-title p-b-34 p-t-27">

						Log in

					</span>

					<span class="err-msg"> 
						<?php
						if(isset($_SESSION["fail"])){
		if($_SESSION["fail"]==1){
			echo("Wrong Username!");
		}else{
			echo("Wrong Password!");
		}
	}
						?>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">

						<input class="input100" type="text" name="username" id="username" placeholder="Username">

						<span class="focus-input100" data-placeholder="&#xf207;"></span>

					</div>



					<div class="wrap-input100 validate-input" data-validate="Enter password">

						<input class="input100" type="password" name="pass" id="pass" placeholder="Password">

						<span class="focus-input100" data-placeholder="&#xf191;"></span>

					</div>



					<!--<div class="contact100-form-checkbox">

						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">

						<label class="label-checkbox100" for="ckb1">

							Remember me

						</label>

					</div>-->



					<div class="container-login100-form-btn">
						
						<input type="submit" class=" login100-form-btn" name="submit" id="submit" value="Login">
						
					</div>



					<div class="text-center p-t-90">

						<a class="txt1" href="#">

							Forgot Password?

						</a>

					</div>

				</form>

			</div>

		</div>

	</div>

	



	<div id="dropDownSelect1"></div>

	

<!--===============================================================================================-->

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

<!--===============================================================================================-->

	<script src="vendor/animsition/js/animsition.min.js"></script>

<!--===============================================================================================-->

	<script src="vendor/bootstrap/js/popper.js"></script>

	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<!--===============================================================================================-->

	<script src="vendor/select2/select2.min.js"></script>

<!--===============================================================================================-->

	<script src="vendor/daterangepicker/moment.min.js"></script>

	<script src="vendor/daterangepicker/daterangepicker.js"></script>

<!--===============================================================================================-->

	<script src="vendor/countdowntime/countdowntime.js"></script>

<!--===============================================================================================-->

	<script src="js/main.js"></script>



</body>

</html>