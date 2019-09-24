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
<title>Thank You</title>

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
	<header class="header-area">
		<!-- Navbar Area -->

	</header>
	<!-- ##### Header Area End ##### -->

	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(img/bg-img/breadcumb3.jpg);">
		<div class="bradcumbContent">

			<h2>Hooray!</h2>
			
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Blog Area Start ##### -->
	<div class="blog-area section-padding-100">
		<div class="container">

			<div class="row">
				<div class="col-12 col-lg-9">

					<!-- Single Post Start -->
					<div class="single-blog-post mb-100 wow fadeInUp"
						data-wow-delay="100ms">

						<h3>Thank you for shopping with us!</h3>
						
						<p>Your order will be shipped in 2-3 business days</p><br>
													<table class="table ">
								<thead>
									<tr>

										<th>Product Name</th>
										<th>Unit Price</th>
										
									</tr>
								</thead>
								<tbody>

									<tr id ="modifyMe1">
										
										<td><%=session.getAttribute("p0")%></td>
										<td><%=session.getAttribute("pr0")%></td>
										
										
									</tr>
										<tr id = "modifyMe2">
											<td><%=session.getAttribute("p1")%></td>
											<td><%=session.getAttribute("pr1")%></td>
										
											 
										</tr>


									</tbody>
							</table>
						<form action="logoutServlet">
							<ul><li><button type="submit" class="btn oneMusic-btn mt-30">Sign Out</button></li></ul>
						</form>
					</div>
					



				</div>


			</div>
		</div>
	</div>
	<!-- ##### Blog Area End ##### -->


	<!-- ##### Contact Area End ##### -->


	<!-- ##### Footer Area Start ##### -->

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