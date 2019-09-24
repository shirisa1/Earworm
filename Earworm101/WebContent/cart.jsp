<%@ page language="java" contentType="text/html; charset=windows-1255"
	pageEncoding="windows-1255"%>
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
<title>One Music - Shopper</title>

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
		</div>
	</div><%!int productID ; String productName ;	double price; %>

	<!-- ##### Header Area Start ##### -->
	<header class="header-area">
		<!-- Navbar Area -->
		<div class="oneMusic-main-menu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar justify-content-between" id="oneMusicNav">

						<!-- Nav brand -->
						<a href="index.jsp" class="nav-brand"><img
							src="img/core-img/logo.png" alt=""></a>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- Menu -->
						<div class="classy-menu">

							<!-- Close Button -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<li><a href="index.jsp">Home</a></li>
									<li><a href="albums-store.jsp">Store</a></li>
									<li><a href="#">Browse</a>
										<ul class="dropdown">
											<li><a href="index.jsp">Accordian</a></li>
											<li><a href="albums-store.jsp">Bass</a></li>
											<li><a href="ad">Piano</a>
											<li><a href="bv">Violin</a>
											<li><a href="#">Guitar</a>
												<ul class="dropdown">
													<li><a href="#">Electric</a></li>
													<li><a href="#">Acoustic</a></li>
													<li><a href="#">Classical</a></li>
													<li><a href="#">Bass Guitar</a>
														<ul class="dropdown">
															<li><a href="#">BG-1</a></li>
															<li><a href="#">BG-2</a></li>
															<li><a href="#">BG-3</a></li>
															<li><a href="#">BG-4</a></li>
														</ul></li>
													<li><a href="#">Even Dropdown</a></li>
												</ul></li>




										</ul></li>


									<!-- Login/Register -->
									<li><a href="#"><%= session.getAttribute("username") %></a>
										<ul class="dropdown">
											<li><a href="cart.jsp">MyCart</a></li>
											<li><a href="logoutServlet">Logout</a></li>
										</ul></li>
									<li><a href="cart.jsp">Cart<span class="icon-shopping-cart"></span></a></li>	

								</ul>

							</div>
							<!-- Nav End -->

						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ##### Header Area End ##### -->

	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(img/bg-img/breadcumb3.jpg);">
		<div class="bradcumbContent">

			<h2><%= session.getAttribute("username") %>'s Cart</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Album Catagory Area Start ##### -->
	<section class="login-area section-padding-100">


	<div class="mainContainer">




		<div class="container">
			<div class="row">


				<div class="col-md-10 col-md-offset-1">

					<div class="panel panel-default panel-table">
						<div class="panel-heading">
							<div class="row">
								<div class="col col-xs-6">
									<h3 class="panel-title"></h3>
								</div>

							</div>
						</div>
						<div class="panel-body">
							<table class="table ">
								<thead>
									<tr>

										<th>Product Name</th>
										<th>Unit Price</th>
										<th>Quantity</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>

									<tr id ="modifyMe1">
										
										<td><%=session.getAttribute("p0")%></td>
										<td><%=session.getAttribute("pr0")%></td>
										<td><input type="number" name="quantity" placeholder="1"></td>
										<td id ="wasted0">Delete</td>
									</tr>
										<tr id = "modifyMe2">
											<td><%=session.getAttribute("p1")%></td>
											<td><%=session.getAttribute("pr1")%></td>
											<td><input type="number" name="quantity"
												 placeholder="1"></td>
											<td id ="wasted1">Delete</td>	 
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




<%-- <!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
 
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
										<th>Unit Price</th>
										<th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<% List<String> products = (List<String>)session.getAttribute("products");%>
										<td><%=session.getAttribute("p0")%></td>
										<td><%=session.getAttribute("pr0")%></td>
										
									</tr>
									<tr>
									<td><%=session.getAttribute("p1")%></td>
										<td><%=session.getAttribute("pr1")%></td>
									
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
 --%>