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


	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(img/bg-img/breadcumb3.jpg);">
		<div class="bradcumbContent">

			<h2>Checkout</h2>
			
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Register Area Start ##### -->
	<section class="login-area section-padding-100">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8">
					<div class="login-content">
						
						<h4>Enter your shipping information</h4>-------------------------------------<br><br>
						<!-- Login Form -->
						<div class="login-form">

							<form action="invoice" method="post">

								<a>Enter your email: <input type="email" name="email" 
									id="exampleInputEmail1" placeholder="abc@google.com"></a>
									<br>
								<br> <a>Enter your phone: <input type="number" name="phone"
									placeholder="607 304 0913"></a> <br><br>
									
								<a>Enter your mailing address: <input required type="text" name="creditcard"
									 placeholder="100 Rotary Ave, NY,NY"></a><br><br><br>
								<h4>Enter your card information</h4>
								-------------------------------------<br>
								<br> Card No:<input required type="number" name="creditcard"
									 placeholder="Enter your card number">
								<label for="start"></label> Expiry Date:<input type="date"  id="start"name="expdate" value="2018-07-22" min="2018-01-01"
									max="2018-12-31"> <br>
								<br> CVV:<input required type="password" name="pin" placeholder="Enter your CVV"><br> <br>
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
