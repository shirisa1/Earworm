<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%-- <%@page import="com.model.Cart"%> --%>
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
	<section
		class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed"
		style="background-image: url(img/bg-img/bg-4.jpg);">
		<div class="container">
			<div class="row align-items-end">
				<div class="col-12 col-md-5 col-lg-4">
					<div class="featured-artist-thumb">
						<img src="img/bg-img/a5.jpg" alt="">
					</div>
				</div>
				<div class="col-12 col-md-7 col-lg-8">
					<div class="featured-artist-content">
						<!-- Section Heading -->
						<div class="section-heading white text-left mb-30">

							<h2>ElectricGuitar</h2>
							<p>$2500.00</p>
						</div>
						<p>Nam tristique ex vel magna tincidunt, ut porta nisl
							finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo
							id sem aliquam fringilla nec non lacus. Suspendisse eget lobortis
							nisi, ac cursus odio. Vivamus nibh velit, rutrum at ipsum ac,
							dignissim iaculis ante. Donec in velit non elit pulvinar
							pellentesque et non eros.</p>
						<div>
							<form action="addToCart" method="post">
							<%
							String pString= "Sound Electric Guitar";
							List<String> product = (List<String>)session.getAttribute("products");
							 product.add(pString);
							 double p1= 2500.00;
						     session.setAttribute("p1","Sound Electric Guitar");
						     session.setAttribute("pr1",p1 );
							%>

								<button type="submit" class="btn oneMusic-btn mt-30">Add
									to cart</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
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