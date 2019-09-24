<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="index.jsp" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
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
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                
                                </ul>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50">
                                        <a href="login.html" id="loginBtn">Login / Register</a>
                                    </div>

                                    <!-- Cart Button -->
                                    <!-- <div class="cart-btn">
                                        <p><span class="icon-shopping-cart"></span> <span class="quantity">1</span></p>
                                    </div> -->
                                </div>
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
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">

            <h2>Register</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Register Area Start ##### -->
    <section class="login-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="login-content">
                        <h3>Welcome New Customer</h3>
                        <!-- Login Form -->
						<div class="login-form">
							<!-- <form action="servlet3" method="post"> -->
								<!-- <div class="form-group">
                                  <label for="exampleInputEmail1">First Name</label>
                                  <input type="text" name ="firstname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter First Name">
                              </div>
                              <div class="form-group">
                                  <label for="exampleInputEmail1">Last Name</label>
                                  <input type="text" name ="lastname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Last Name">
                              </div>
                              <div class="form-group">
                                  <label for="exampleInputEmail1">Email</label>
                                  <input type="email" name ="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
                                  <small id="emailHelp" class="form-text text-muted"><i class="fa fa-lock mr-2"></i>We'll never share your email with anyone else.</small>
                              </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">User Name</label>
                                    <input type="text" name ="name" class="form-control" placeholder="Enter Username">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" class="form-control" placeholder="Password">
                                </div>
                                <button type="submit" class="btn oneMusic-btn mt-30">Register</button>
                            </form> -->
                            
								<form action="servlet3" method="post">

									<input required type="text" name="firstname" class="form-control"
										placeholder="Enter your first name"> <br>
									<input required type="text" name="lastname" class="form-control"
										placeholder="Enter your last name"> <br> <input required
										type="email" name="email" class="form-control"
										id="exampleInputEmail1" placeholder="Enter your email">

									<br> <input type="number" name="age" class="form-control"
										placeholder="Enter your age"> <br> <input
										type="checkbox" name="gender"  value="Male" /> Male <input
										type="checkbox" name="gender"  value="Female" /> Female<br>
									<br> <input required type="text" name="username" class="form-control" placeholder="Create your username">
									<br> <input required type="password" name="password" class="form-control" placeholder="Create your password"><br> <br>
									<button type="submit" class="btn oneMusic-btn mt-30">Register</button>

								</form>
						</div>

					</div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Login Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <a href="#"><img src="img/core-img/logo.png" alt=""></a>
                    <p class="copywrite-text"><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Sachin Hirisave <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://www.sachinhirisave.com" target="_blank">Apolis</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>

                <div class="col-12 col-md-6">
                    <div class="footer-nav">
                        <ul>
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
