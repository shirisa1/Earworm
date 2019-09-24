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

			<h2>Latest Items</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Album Catagory Area Start ##### -->
	<section class="album-catagory section-padding-100-0">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div
						class="browse-by-catagories catagory-menu d-flex flex-wrap align-items-center mb-70">
						<a href="#" data-filter="*" class="active">Browse All</a> <a
							href="#" data-filter=".a">Accordian </a> <a href="#"
							data-filter=".b">Bass</a> <a href="#" data-filter=".c">Piano</a>
						<a href="#" data-filter=".d">Violin</a> <a href="#"
							data-filter=".e">Guitars</a> <a href="#" data-filter=".f">Flutes</a>
						<!--                         <a href="#" data-filter=".g">G</a>
                        <a href="#" data-filter=".h">H</a>
                        <a href="#" data-filter=".i">I</a>
                        <a href="#" data-filter=".j">J</a>
                        <a href="#" data-filter=".k">K</a>
                        <a href="#" data-filter=".l">L</a>
                        <a href="#" data-filter=".m">M</a>
                        <a href="#" data-filter=".n">N</a>
                        <a href="#" data-filter=".o">O</a>
                        <a href="#" data-filter=".p">P</a>
                        <a href="#" data-filter=".q">Q</a>
                        <a href="#" data-filter=".r">R</a>
                        <a href="#" data-filter=".s">S</a>
                        <a href="#" data-filter=".t">T</a>
                        <a href="#" data-filter=".u">U</a>
                        <a href="#" data-filter=".v">V</a>
                        <a href="#" data-filter=".w">W</a>
                        <a href="#" data-filter=".x">X</a>
                        <a href="#" data-filter=".y">Y</a>
                        <a href="#" data-filter=".z">Z</a>
                        <a href="#" data-filter=".number">0-9</a> -->
					</div>
				</div>
			</div>

			<div class="row oneMusic-albums">

				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item t c p">
					<div class="single-album">
						<img src="img/bg-img/piano.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Piano</h5>
							</a>
							<p>Grand Piano</p>
							<p>$5000.00</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p><%
									int productID =10101;
									String productName = "Grand Piano";
									double price=5000.00;
									
									session.setAttribute("productID", productID);
									session.setAttribute("productName", productName);
									session.setAttribute("price",price );
								
								%>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>
<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item t c p">
					<div class="single-album">
						<img src="img/bg-img/a1.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Piano</h5>
							</a>
							<p>Piano white</p>
							<p>$5000.00</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item s e q">
					<div class="single-album">
						<img src="img/bg-img/a5.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Sound Electric</h5>
							</a>
							<p>Model 2000 - Electric</p>
							<p>$2500.00</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
								
									<a href="productDisplay1.jsp" class="video--play--btn"><span
										class="icon-shopping-cart" onClick="clickEvent" ></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item w f r">
					<div class="single-album">
						<img src="img/bg-img/aa3.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Wosh Flute</h5>
							</a>
							<p>Model 2019 - Titanium</p>
							<p>$2200.00</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item t g u">
					<div class="single-album">
						<img src="img/bg-img/a4.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Tabletop Synth</h5>
							</a>
							<p>Model 2018 - Brink</p>
							<p>$2000.00</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item d h v">
					<div class="single-album">
						<img src="img/bg-img/aa.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Dream Violin</h5>
							</a>
							<p>Model 2003 - Neo Classic</p>
							<p>$399.99</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item t i x">
					<div class="single-album">
						<img src="img/bg-img/a6.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>The Turntable</h5>
							</a>
							<p>Vinyl Player</p>
							<p>$550.00</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item b j y">
					<div class="single-album">
						<img src="img/bg-img/a7.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Bass</h5>
							</a>
							<p>Model 2009 - Beano HB250</p>
							<p>$1000.00</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item a k z">
					<div class="single-album">
						<img src="img/bg-img/a8.jpg" alt="">

						<div class="album-info">
							<a href="#">
								<h5>Accordian</h5>
							</a>
							<p>Model 2019 - Classic</p>
							<p>$200.90</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div
					class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item w l number">
					<div class="single-album">
						<img src="img/bg-img/aad.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Whimmer Flute</h5>
							</a>
							<p>Model 2019 - Whimmer</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item d m">
					<div class="single-album">
						<img src="img/bg-img/a10.jpeg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Dark Frame Violin</h5>
							</a>
							<p>Model 2019 - Modern</p>
							<p>$550.99</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item t n">
					<div class="single-album">
						<img src="img/bg-img/a11.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>The Microphone</h5>
							</a>
							<p>Model 2018 - Pluggable</p>
							<p>$250.90</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Album -->
				<div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item b o">
					<div class="single-album">
						<img src="img/bg-img/a12.jpg" alt="">
						<div class="album-info">
							<a href="#">
								<h5>Bass</h5>
							</a>
							<p>Model 2004 - Contrabajo</p>
							<p>$500.00</p>
							<!-- Cart Button -->
							<div class="play=icon">
								<p>
									<a href="productDisplay" class="video--play--btn"><span
										class="icon-shopping-cart"></span> </a>
									<!-- <span class="quantity">1</span> -->
								</p>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- ##### Album Catagory Area End ##### -->

	<!-- <!-- ##### Buy Now Area Start #####
	<div class="oneMusic-buy-now-area mb-100">
		<div class="container">
			<div class="row">

				Single Album Area
				<div class="col-12 col-sm-6 col-md-3">
					<div class="single-album-area">
						<div class="album-thumb">
							<img src="img/bg-img/b1.jpg" alt="">
							Album Price
							<div class="album-price">
								<p>$0.90</p>
							</div>
							Play Icon
							<div class="play-icon">
								<a href="#" class="video--play--btn"><span
									class="icon-play-button"></span></a>
							</div>
						</div>
						<div class="album-info">
							<a href="#">
								<h5>Garage Band</h5>
							</a>
							<p>Radio Station</p>
						</div>
					</div>
				</div>

				Single Album Area
				<div class="col-12 col-sm-6 col-md-3">
					<div class="single-album-area">
						<div class="album-thumb">
							<img src="img/bg-img/b2.jpg" alt="">
						</div>
						<div class="album-info">
							<a href="#">
								<h5>Noises</h5>
							</a>
							<p>Buble Gum</p>
						</div>
					</div>
				</div>

				Single Album Area
				<div class="col-12 col-sm-6 col-md-3">
					<div class="single-album-area">
						<div class="album-thumb">
							<img src="img/bg-img/b3.jpg" alt="">
						</div>
						<div class="album-info">
							<a href="#">
								<h5>Jess Parker</h5>
							</a>
							<p>The Album</p>
						</div>
					</div>
				</div>

				Single Album Area
				<div class="col-12 col-sm-6 col-md-3">
					<div class="single-album-area">
						<div class="album-thumb">
							<img src="img/bg-img/b4.jpg" alt="">
						</div>
						<div class="album-info">
							<a href="#">
								<h5>Noises</h5>
							</a>
							<p>Buble Gum</p>
						</div>
					</div>
				</div>

			</div>

			<div class="row">
				<div class="col-12">
					<div class="load-more-btn text-center">
						<a href="#" class="btn oneMusic-btn">Load More <i
							class="fa fa-angle-double-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	##### Buy Now Area End #####

	##### Add Area Start #####
	    <div class="add-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="adds">
                        <a href="#"><img src="img/bg-img/add3.gif" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	##### Add Area End #####



	##### Contact Area Start #####
	    <section class="contact-area section-padding-100 bg-img bg-overlay bg-fixed has-bg-img" style="background-image: url(img/bg-img/bg-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading white">
                        <p>See whatâs new</p>
                        <h2>Get In Touch</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    Contact Form Area
                    <div class="contact-form-area">
                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-md-6 col-lg-4">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="email" placeholder="E-mail">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="subject" placeholder="Subject">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-12 text-center">
                                    <button class="btn oneMusic-btn mt-30" type="submit">Send <i class="fa fa-angle-double-right"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
	##### Contact Area End #####
 --> -->
	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container">
			<div class="row d-flex flex-wrap align-items-center">
				<div class="col-12 col-md-6">
					<a href="#"><img src="img/core-img/logo.png" alt=""></a>
					<p class="copywrite-text">
						<a href="#">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>document.write(new Date().getFullYear());</script>
							All rights reserved | Sachin Hirisave <i class="fa fa-heart-o"
							aria-hidden="true"></i> by <a
							href="https://www.sachinhirisave.com" target="_blank">Apolis</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>

				<div class="col-12 col-md-6">
					<div class="footer-nav">
						<ul>
							<!--                             <li><a href="#">Home</a></li>
                            <li><a href="#">Albums</a></li>
                            <li><a href="#">Events</a></li>
                            <li><a href="#">News</a></li> -->
							<li><a href="#">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
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
