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
<body>

	<div class="mainContainer">




		<div class="container">
			<div class="row">


				<div class="col-md-10 col-md-offset-1">

					<div class="panel panel-default panel-table">
						<div class="panel-heading">
							<div class="row">
								<div class="col col-xs-6">
									<h3 class="panel-title">List of selected products</h3>
								</div>

							</div>
						</div>
						<div class="panel-body">
							<table class="table ">
								<thead>
									<tr>

										<th>Product Name</th>
										<th>Price</th>
									</tr>
								</thead>
								<tbody>

									<tr>

										<td><%=session.getAttribute("products")%></td>
										<td><%=session.getAttribute("price")%></td>


									</tr>


								</tbody>
							</table>
							<div class="panel-footer">
								<div class="row">
									<div>
										<form action="AddressController" method="post">
											<button type="submit" class="btn oneMusic-btn mt-30">Continue
												to Billing and Shipping Address</button>
										</form>

									</div>
								</div>

							</div>

						</div>

					</div>
				</div>
			</div>



		</div>
	</div>
	</section>
</body>


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
