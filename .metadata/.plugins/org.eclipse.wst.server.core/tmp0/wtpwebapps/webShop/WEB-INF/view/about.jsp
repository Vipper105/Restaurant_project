<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<%
String contextPath=request.getContextPath(); 
%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>Live Dinner Restaurant</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="<%=contextPath %>/images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="<%=contextPath %>images/apple-touch-icon.png">

<!-- Site CSS -->
<link rel="stylesheet" href="<%=contextPath %>>css/style.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="<%=contextPath %>>css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<!-- Start header -->
	<header>
		<nav>
			<div>
				<a href="index.html"> <img src="images/logo.png" alt="" />
				</a>
				<button type="button" data-toggle="collapse"
					data-target="#navbars-rs-food" aria-controls="navbars-rs-food"
					aria-expanded="false" aria-label="Toggle navigation">
					<span></span>
				</button>
				<div id="navbars-rs-food">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="menu.html">Menu</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="#" id="dropdown-a" data-toggle="dropdown">Pages</a>
							<div aria-labelledby="dropdown-a">
								<a href="reservation.html">Reservation</a> <a href="stuff.html">Stuff</a>
								<a href="gallery.html">Gallery</a>
							</div></li>
						<li><a href="#" id="dropdown-a" data-toggle="dropdown">Blog</a>
							<div aria-labelledby="dropdown-a">
								<a href="blog.html">blog</a> <a href="blog-details.html">blog
									Single</a>
							</div></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	<!-- Start header -->
	<div>
		<div>
			<div>
				<div>
					<h1>About Us</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

	<!-- Start About -->
	<div>
		<div>
			<div>
				<div>
					<div>
						<h1>
							Welcome To <span>Live Dinner Restaurant</span>
						</h1>
						<h4>Little Story</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Pellentesque auctor suscipit feugiat. Ut at pellentesque ante,
							sed convallis arcu. Nullam facilisis, eros in eleifend luctus,
							odio ante sodales augue, eget lacinia lectus erat et sem.</p>
						<p>Sed semper orci sit amet porta placerat. Etiam quis finibus
							eros. Sed aliquam metus lorem, a pellentesque tellus pretium a.
							Nulla placerat elit in justo vestibulum, et maximus sem pulvinar.</p>
						<a href="#">Reservation</a>
					</div>
				</div>
				<div>
					<img src="images/about-img.jpg" alt="">
				</div>
				<div>
					<div>
						<p>Sed tincidunt, neque at egestas imperdiet, nulla sapien
							blandit nunc, sit amet pulvinar orci nibh ut massa. Proin nec
							lectus sed nunc placerat semper. Duis hendrerit elit nec sapien
							porttitor, ut pretium ipsum feugiat. Aenean volutpat porta nisi
							in gravida. Curabitur pulvinar ligula sed facilisis bibendum.
							Nullam vitae nulla elit.</p>
						<p>Integer purus velit, eleifend eu magna volutpat, porttitor
							blandit lectus. Aenean risus odio, efficitur quis erat eget,
							mattis tristique arcu. Fusce in ante enim. Integer consectetur
							elit nec laoreet rutrum. Mauris porta turpis nec tellus accumsan
							pellentesque. Morbi non quam tempus, convallis urna in, cursus
							mauris.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->

	<!-- Start Menu -->
	<div>
		<div>
			<div>
				<div>
					<div>
						<h2>Special Menu</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting</p>
					</div>
				</div>
			</div>

			<div>
				<div>
					<div id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home"
							role="tab" aria-controls="v-pills-home" aria-selected="true">All</a>
						<a id="v-pills-profile-tab" data-toggle="pill"
							href="#v-pills-profile" role="tab"
							aria-controls="v-pills-profile" aria-selected="false">Drinks</a>
						<a id="v-pills-messages-tab" data-toggle="pill"
							href="#v-pills-messages" role="tab"
							aria-controls="v-pills-messages" aria-selected="false">Lunch</</a>
						<a id="v-pills-settings-tab" data-toggle="pill"
							href="#v-pills-settings" role="tab"
							aria-controls="v-pills-settings" aria-selected="false">Dinner</a>
					</div>
				</div>

				<div>
					<div id="v-pills-tabContent">
						<div id="v-pills-home" role="tabpanel"
							aria-labelledby="v-pills-home-tab">
							<div>
								<div>
									<div>
										<img src="images/img-01.jpg" alt="Image">
										<div>
											<h4>Special Drinks 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$7.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-02.jpg" alt="Image">
										<div>
											<h4>Special Drinks 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$9.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-03.jpg" alt="Image">
										<div>
											<h4>Special Drinks 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$10.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-04.jpg" alt="Image">
										<div>
											<h4>Special Lunch 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$15.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-05.jpg" alt="Image">
										<div>
											<h4>Special Lunch 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$18.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-06.jpg" alt="Image">
										<div>
											<h4>Special Lunch 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$20.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-07.jpg" alt="Image">
										<div>
											<h4>Special Dinner 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$25.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-08.jpg" alt="Image">
										<div>
											<h4>Special Dinner 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$22.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-09.jpg" alt="Image">
										<div>
											<h4>Special Dinner 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$24.79</h5>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div id="v-pills-profile" role="tabpanel"
							aria-labelledby="v-pills-profile-tab">
							<div>
								<div>
									<div>
										<img src="images/img-01.jpg" alt="Image">
										<div>
											<h4>Special Drinks 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$7.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-02.jpg" alt="Image">
										<div>
											<h4>Special Drinks 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$9.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-03.jpg" alt="Image">
										<div>
											<h4>Special Drinks 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$10.79</h5>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div id="v-pills-messages" role="tabpanel"
							aria-labelledby="v-pills-messages-tab">
							<div>
								<div>
									<div>
										<img src="images/img-04.jpg" alt="Image">
										<div>
											<h4>Special Lunch 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$15.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-05.jpg" alt="Image">
										<div>
											<h4>Special Lunch 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$18.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-06.jpg" alt="Image">
										<div>
											<h4>Special Lunch 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$20.79</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="v-pills-settings" role="tabpanel"
							aria-labelledby="v-pills-settings-tab">
							<div>
								<div>
									<div>
										<img src="images/img-07.jpg" alt="Image">
										<div>
											<h4>Special Dinner 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$25.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-08.jpg" alt="Image">
										<div>
											<h4>Special Dinner 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$22.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="images/img-09.jpg" alt="Image">
										<div>
											<h4>Special Dinner 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$24.79</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- End Menu -->

	<!-- Start Contact info -->
	<div>
		<div>
			<div>
				<div>
					<i></i>
					<div>
						<h4>Phone</h4>
						<p>+01 123-456-4590</p>
					</div>
				</div>
				<div>
					<i></i>
					<div>
						<h4>Email</h4>
						<p>yourmail@gmail.com</p>
					</div>
				</div>
				<div>
					<i></i>
					<div>
						<h4>Location</h4>
						<p>800, Lorem Street, US</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->

	<!-- Start Footer -->
	<footer>
		<div>
			<div>
				<div>
					<h3>About Us</h3>
					<p>Integer cursus scelerisque ipsum id efficitur. Donec a dui
						fringilla, gravida lorem ac, semper magna. Aenean rhoncus ac
						lectus a interdum. Vivamus semper posuere dui.</p>
				</div>
				<div>
					<h3>Subscribe</h3>
					<div>
						<form>
							<input name="EMAIL" id="subs-email"
								placeholder="Email Address..." type="email">
							<button type="submit">SUBSCRIBE</button>
							<div></div>
						</form>
					</div>
					<ul>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
						<li><a href="#"><i aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div>
					<h3>Contact information</h3>
					<p>Ipsum Street, Lorem Tower, MO, Columbia, 508000</p>
					<p>
						<a href="#">+01 2000 800 9999</a>
					</p>
					<p>
						<a href="#"> info@admin.com</a>
					</p>
				</div>
				<div>
					<h3>Opening hours</h3>
					<p>
						<span>Monday: </span>Closed
					</p>
					<p>
						<span>Tue-Wed :</span> 9:Am - 10PM
					</p>
					<p>
						<span>Thu-Fri :</span> 9:Am - 10PM
					</p>
					<p>
						<span>Sat-Sun :</span> 5:PM - 10PM
					</p>
				</div>
			</div>
		</div>

		<div>
			<div>
				<div>
					<div>
						<p>
							All Rights Reserved. &copy; 2018 <a href="#">Live Dinner
								Restaurant</a> Design By : <a href="#">html design</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i
		aria-hidden="true"></i></a>

	<!-- ALL JS FILES -->
	<!-- ALL PLUGINS -->
	<script src="js/custom.js"></script>

</body>
</html>