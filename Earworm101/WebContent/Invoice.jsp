<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>One Music - Modern Music HTML5 Template</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="style.css">

</head>

<body>
	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="lds-ellipsis">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>

	<!-- ##### Header Area Start ##### -->
	<header class="header-area"> </header>
	<!-- ##### Header Area End ##### -->


	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Register Area Start ##### -->
	<section class="login-area section-padding-100">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8">
					<div class="login-content">
						<h3>
							Hi,<%=session.getAttribute("username") %></h3>
						<p>Please fill out your shipping information</p>
						<!-- Login Form -->
						<div class="login-form">

							<form action="invoice" method="post">

								<input type="email" name="email" class="form-control"
									id="exampleInputEmail1" placeholder="Enter your email">
								<br> <input type="number" name="phone" class="form-control"
									placeholder="Enter your phonenumber"> <br> <br>
								<input required type="text" name="creditcard"
									class="form-control" placeholder="Enter your mailing address"><br>

								<br> <input required type="text" name="creditcard"
									class="form-control" placeholder="Enter your card number">
								<label for="start">Expiry date:</label> <input type="date" class="form-control" id="start"name="expdate" value="2018-07-22" min="2018-01-01"
									max="2018-12-31"> 
								<br> <input required type="password" name="pin" class="form-control"placeholder="Enter your CVV"><br> <br>
								<button type="submit" class="btn oneMusic-btn mt-30">Pay</button>

							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>

</html>
