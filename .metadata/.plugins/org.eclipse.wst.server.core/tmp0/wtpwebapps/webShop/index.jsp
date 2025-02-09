<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="tp.kits3.livedinner.VO.Menu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	//String contextPath =pageContext.getRequest().getServletContext();
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>Restaurant Demo</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site css -->
<link rel="stylesheet" href="<%=contextPath%>/css/index.css">

<!-- Site Icons -->
<!-- <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"> -->
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">

<!-- Site CSS -->
<!-- Custom CSS for each page -->
<link rel="stylesheet" href="<%=contextPath%>/css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<%
// List<Menu> listMenu=(ArrayList<Menu>)request.getAttribute("MenuList");
%>

<body>

	<!-- %=  Bỏ giá trị vào HTML -->
	<%=contextPath%>
	<!-- Lấy đường dẫn, dùng khi thay đổi đường dẫn ở Server -->

	<!-- Start header -->
	<header>
		<nav>
			<div class="pc-layout">
				<div class="menu-top">                                                                                                                                                                                                                                                                                                                                                                                                                                
					<a href="index.html"> <img
						src="<%=contextPath%>/images/logo.png" alt="" />
					</a>

					<div id="navbars-rs-food">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="/webShop/menu/list">Menu</a></li>
							<li><a href="/webShop/about-page">About</a></li>
							<li class="dropdown" onclick="show_hide('s1')"><a href="#/">Pages
									&#9660;</a>
								<div class="drop-content" id="s1">
									<a href="/webShop/reservation-page">Reservation</a> 
									<a href="stuff.html">Stuff</a>
									<a href="gallery.html">Gallery</a>
								</div></li>
							<li class="dropdown" onclick="show_hide('s2')"><a href="#/">Blog
									&#9660;</a>
								<div class="drop-content" id="s2">
									<a href="blog.html">blog</a> 
									<a href="/webShop/blog-details-page">blog
										Single</a>
								</div></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	<div class="slideshow-container">

		<!-- Full-width images with number and caption text -->
		<div class="mySlides">

			<img src="<%=contextPath%>/images/slider-01.jpg" style="width: 100%">

			<div class="pc-layout">
				<div class="text">
					<h1>
						<strong>Welcome To <br> Live Dinner Restaurant
						</strong>
					</h1>
					<p>
						See how your users experience your website in realtime or view <br>
						trends to see any changes in performance over time.
					</p>
					<p>
						<a href="#">Reservation</a>
					</p>
				</div>

			</div>
		</div>

		<div class="mySlides">

			<img src="<%=contextPath%>/images/slider-02.jpg" style="width: 100%">
			<div class="pc-layout">
				<div class="text">
					<h1>
						<strong>Welcome To <br> Live Dinner Restaurant
						</strong>
					</h1>
					<p>
						See how your users experience your website in realtime or view <br>
						trends to see any changes in performance over time.
					</p>
					<p>
						<a href="#">Reservation</a>
					</p>
				</div>
			</div>
		</div>

		<div class="mySlides">
			<img src="<%=contextPath%>/images/slider-03.jpg" style="width: 100%">
			<div class="pc-layout">
				<div class="text">
					<h1>
						<strong>Welcome To <br> Live Dinner Restaurant
						</strong>
					</h1>
					<p>
						See how your users experience your website in realtime or view <br>
						trends to see any changes in performance over time.
					</p>
					<p>
						<a href="#">Reservation</a>
					</p>
				</div>

			</div>
		</div>

		<!-- Next and previous buttons -->
		<a class="prev" onclick="plusSlides(1)">&#10094;</a> <a class="next"
			onclick="plusSlides(1)">&#10095;</a>

		<!-- The dots/circles -->
		<div style="text-align: center" class="dot-contains">
			<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
				onclick="currentSlide(2)"></span> <span class="dot"
				onclick="currentSlide(3)"></span>
		</div>
	</div>
	<br>

	<!-- The dots/circles -->
	<!-- <div style="text-align:center" class="dot-contains"> 
		<span class="dot" onclick="currentSlide(1)"></span>
		<span class="dot" onclick="currentSlide(2)"></span>
		<span class="dot" onclick="currentSlide(3)"></span>
	</div> -->

	<!-- End slides -->

	<!-- Start About -->
	<div class="about">
		<div class="pc-layout">
			<div class="about-content">

				<h1>
					Welcome To <span>Live Dinner Restaurant</span>
				</h1>
				<h4>Little Story</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Pellentesque auctor suscipit feugiat. Ut at pellentesque ante, sed
					convallis arcu. Nullam facilisis, eros in eleifend luctus, odio
					ante sodales augue, eget lacinia lectus erat et sem.</p>
				<p style="margin-bottom: 30px;">Sed semper orci sit amet porta
					placerat. Etiam quis finibus eros. Sed aliquam metus lorem, a
					pellentesque tellus pretium a. Nulla placerat elit in justo
					vestibulum, et maximus sem pulvinar.</p>
				<a href="#">Reservation</a>

			</div>
			<div class="about-img">
				<div class="about-shadow">
					<img src="<%=contextPath%>/images/about-img.jpg" alt="">
				</div>
			</div>
		</div>

	</div>
	<!-- End About -->

	<!-- Start QT -->
	<div class="qt-bg pc">
		<div class="pc-layout" style="text-align: center;">

			<p>" If you're not the one cooking, stay out of the way and
				compliment the chef. "</p>
			<span>Michael Strahan</span>

		</div>
	</div>
	<!-- End QT -->

	<!-- Start Menu -->
	<div>
		<div class="pc-layout">
			<div class="special-menu-title">
				<div>
					<h2>Special Menu</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting</p>
				</div>
			</div>

			<div class="special-menu-content">
				<div id="v-pills-tab">
					<ul>
						<li class="tabColor" id="tab1"
							onclick="changeTab('v-pills-home','tab1','v-pills-home-tab')"><a
							href="#/" class="aColor" id="v-pills-home-tab">All</a></li>
						<li id="tab2"
							onclick="changeTab('v-pills-profile','tab2','v-pills-profile-tab')"><a
							href="#/" id="v-pills-profile-tab">Drinks</a></li>
						<li id="tab3"
							onclick="changeTab('v-pills-messages','tab3','v-pills-messages-tab')"><a
							href="#/" id="v-pills-messages-tab">Lunch</a></li>
						<li id="tab4"
							onclick="changeTab('v-pills-settings','tab4','v-pills-settings-tab')"
							class="tabChange"><a href="#/" id="v-pills-settings-tab">Dinner</a>
						</li>
					</ul>

				</div>

				<div id="v-pills-tabContent">
					<div id="v-pills-home" class="pills">
						<div class="container" onmouseover="showOverplay('op1')"
							onmouseout="hideOverplay('op1')">
							<img src="<%=contextPath%>/images/img-01.jpg" alt="Image">
							<div class="overplay" id="op1">
								<div class="text_overplay">
									<h4>Special Drinks 1</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$7.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op2')"
							onmouseout="hideOverplay('op2')">
							<img src="<%=contextPath%>/images/img-02.jpg" alt="Image">
							<div class="overplay" id="op2">
								<div class="text_overplay">
									<h4>Special Drinks 2</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op3')"
							onmouseout="hideOverplay('op3')">
							<img src="<%=contextPath%>/images/img-03.jpg" alt="Image">
							<div class="overplay" id="op3">
								<div class="text_overplay">
									<h4>Special Drinks 3</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$10.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op4')"
							onmouseout="hideOverplay('op4')">
							<img src="<%=contextPath%>/images/img-04.jpg" alt="Image">
							<div class="overplay" id="op4">
								<div class="text_overplay">
									<h4>Special Drinks 4</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$11.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op5')"
							onmouseout="hideOverplay('op5')">
							<img src="<%=contextPath%>/images/img-05.jpg" alt="Image">
							<div class="overplay" id="op5">
								<div class="text_overplay">
									<h4>Special Drinks 5</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$12.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op6')"
							onmouseout="hideOverplay('op6')">
							<img src="<%=contextPath%>/images/img-06.jpg" alt="Image">
							<div class="overplay" id="op6">
								<div class="text_overplay">
									<h4>Special Drinks 6</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$12.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op7')"
							onmouseout="hideOverplay('op7')">
							<img src="<%=contextPath%>/images/img-07.jpg" alt="Image">
							<div class="overplay" id="op7">
								<div class="text_overplay">
									<h4>Special Drinks 7</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$14.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op8')"
							onmouseout="hideOverplay('op8')">
							<img src="<%=contextPath%>/images/img-08.jpg" alt="Image">
							<div class="overplay" id="op8">
								<div class="text_overplay">
									<h4>Special Drinks 8</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$15.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op9')"
							onmouseout="hideOverplay('op9')">
							<img src="<%=contextPath%>/images/img-09.jpg" alt="Image">
							<div class="overplay" id="op9">
								<div class="text_overplay">
									<h4>Special Drinks 9</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>

					</div>

					<div id="v-pills-profile" class="pills">
						<div class="container" onmouseover="showOverplay('op8')"
							onmouseout="hideOverplay('op8')">
							<img src="<%=contextPath%>/images/img-08.jpg" alt="Image">
							<div class="overplay" id="op8">
								<div class="text_overplay">
									<h4>Special Drinks 8</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op9')"
							onmouseout="hideOverplay('op9')">
							<img src="<%=contextPath%>/images/img-09.jpg" alt="Image">
							<div class="overplay" id="op9">
								<div class="text_overplay">
									<h4>Special Drinks 9</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op7')"
							onmouseout="hideOverplay('op7')">
							<img src="<%=contextPath%>/images/img-07.jpg" alt="Image">
							<div class="overplay" id="op7">
								<div class="text_overplay">
									<h4>Special Drinks 7</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>
					</div>

					<div id="v-pills-messages" class="pills">
						<div class="container" onmouseover="showOverplay('op3')"
							onmouseout="hideOverplay('op3')">
							<img src="<%=contextPath%>/images/img-03.jpg" alt="Image">
							<div class="overplay" id="op3">
								<div class="text_overplay">
									<h4>Special Drinks 3</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op5')"
							onmouseout="hideOverplay('op5')">
							<img src="<%=contextPath%>/images/img-05.jpg" alt="Image">
							<div class="overplay" id="op5">
								<div class="text_overplay">
									<h4>Special Drinks 5</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op7')"
							onmouseout="hideOverplay('op7')">
							<img src="<%=contextPath%>/images/img-07.jpg" alt="Image">
							<div class="overplay" id="op7">
								<div class="text_overplay">
									<h4>Special Drinks 7</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>
					</div>

					<div id="v-pills-settings" class="pills">
						<div class="container" onmouseover="showOverplay('op1')"
							onmouseout="hideOverplay('op1')">
							<img src="<%=contextPath%>/images/img-01.jpg" alt="Image">
							<div class="overplay" id="op1">
								<div class="text_overplay">
									<h4>Special Drinks 1</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op2')"
							onmouseout="hideOverplay('op2')">
							<img src="<%=contextPath%>/images/img-02.jpg" alt="Image">
							<div class="overplay" id="op2">
								<div class="text_overplay">
									<h4>Special Drinks 2</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>

						<div class="container" onmouseover="showOverplay('op3')"
							onmouseout="hideOverplay('op3')">
							<img src="<%=contextPath%>/images/img-03.jpg" alt="Image">
							<div class="overplay" id="op3">
								<div class="text_overplay">
									<h4>Special Drinks 3</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>
						<div class="container" onmouseover="showOverplay('op4')"
							onmouseout="hideOverplay('op4')">
							<img src="<%=contextPath%>/images/img-04.jpg" alt="Image">
							<div class="overplay" id="op4">
								<div class="text_overplay">
									<h4>Special Drinks 4</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>
						<div class="container" onmouseover="showOverplay('op7')"
							onmouseout="hideOverplay('op7')">
							<img src="<%=contextPath%>/images/img-07.jpg" alt="Image">
							<div class="overplay" id="op7">
								<div class="text_overplay">
									<h4>Special Drinks 7</h4>
									<p>Sed id magna vitae eros sagittis euismod.</p>
									<span>----------------</span>
									<h5>$16.79</h5>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- End Menu -->

	<!-- Start Gallery -->
	<div class="pc-layout">
		<div class="gallery-title">
			<div>
				<div>
					<h2>Gallery</h2>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting</p>
				</div>
			</div>
		</div>
		
		<div class="gallery-content">
		<!-- 
		<% //for(int i=0;i<listMenu.size();i++){%>
			<div class="gallary-image" onmouseover="bigImg('gm1')"
				onmouseout="normalImg('gm1')">
				<a href="<%=contextPath%>/images/gallery-img-01.jpg"> <img
					src="<%=contextPath%>/images/gallery-img-01.jpg"
					alt="Gallery Images" class="img-gl" id="gm1">
				</a>
			</div>	
		
		<%// } %>
		 -->
			<div class="gallary-image" onmouseover="bigImg('gm1')"
				onmouseout="normalImg('gm1')">
				<a href="<%=contextPath%>/images/gallery-img-01.jpg"> <img
					src="<%=contextPath%>/images/gallery-img-01.jpg"
					alt="Gallery Images" class="img-gl" id="gm1">
				</a>
			</div>
			<div class="gallary-image" onmouseover="bigImg('gm2')"
				onmouseout="normalImg('gm2')">
				<a href="<%=contextPath%>/images/gallery-img-02.jpg"> <img
					src="<%=contextPath%>/images/gallery-img-02.jpg"
					alt="Gallery Images" class="img-gl" id="gm2">
				</a>
			</div>
			<div class="gallary-image" onmouseover="bigImg('gm3')"
				onmouseout="normalImg('gm3')">
				<a href="<%=contextPath%>/images/gallery-img-03.jpg"> <img
					src="<%=contextPath%>/images/gallery-img-03.jpg"
					alt="Gallery Images" class="img-gl" id="gm3">
				</a>
			</div>
			<div class="gallary-image" onmouseover="bigImg('gm4')"
				onmouseout="normalImg('gm4')">
				<a href="<%=contextPath%>/images/gallery-img-04.jpg"> <img
					src="<%=contextPath%>/images/gallery-img-04.jpg"
					alt="Gallery Images" class="img-gl" id="gm4">
				</a>
			</div>
			<div class="gallary-image" onmouseover="bigImg('gm5')"
				onmouseout="normalImg('gm5')">
				<a href="<%=contextPath%>/images/gallery-img-05.jpg"> <img
					src="<%=contextPath%>/images/gallery-img-05.jpg"
					alt="Gallery Images" class="img-gl" id="gm5">
				</a>
			</div>
			<div class="gallary-image" onmouseover="bigImg('gm6')"
				onmouseout="normalImg('gm6')">
				<a href="<%=contextPath%>/images/gallery-img-06.jpg"> <img
					src="<%=contextPath%>/images/gallery-img-06.jpg"
					alt="Gallery Images" class="img-gl" id="gm6">
				</a>
			</div>

		</div>
	</div>

	<!-- End Gallery -->

	<!-- Start Customer Reviews -->

	<div class="pc-layout customer_reviews">
		<div class="review-title">
			<div>
				<h2>Customer Reviews</h2>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting</p>
			</div>
		</div>
		<div>
			<div id="reviews-section">
				<div class="contain-reviews">
					<div class="details-reviews mySlides fade">

						<img src="<%=contextPath%>/images/quotations-button.png" alt="">

						<h5>
							<strong>Paul Mitchel</strong>
						</h5>
						<h6>Web Developer</h6>
						<p>A Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
							metus, dapibus nec turpis vel, semper malesuada ante. Idac
							bibendum scelerisque non non purus. Suspendisse varius nibh non
							aliquet.</p>
					</div>
					<div class="details-reviews mySlides fade">

						<img src="<%=contextPath%>/images/quotations-button.png" alt="">

						<h5>
							<strong>Steve Fonsi</strong>
						</h5>
						<h6>Web Designer</h6>
						<p>B Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
							metus, dapibus nec turpis vel, semper malesuada ante. Idac
							bibendum scelerisque non non purus. Suspendisse varius nibh non
							aliquet.</p>
					</div>
					<div class="details-reviews mySlides fade">

						<img src="<%=contextPath%>/images/quotations-button.png" alt="">

						<h5>
							<strong>Daniel vebar</strong>
						</h5>
						<h6>Seo Analyst</h6>
						<p>C Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
							metus, dapibus nec turpis vel, semper malesuada ante. Idac
							bibendum scelerisque non non purus. Suspendisse varius nibh non
							aliquet.</p>
					</div>
				</div>

				<a href="#/" id="previous-reviews" onclick="plusIndex(1)"> <span>&#10094;</span>
				</a> <a href="#/" id="next-reviews" onclick="plusIndex(1)"> <span>&#10095;</span>
				</a>

			</div>
		</div>
	</div>

	<!-- End Customer Reviews -->


	<!-- Start Contact info -->

	<div class="contact-container">
		<div>
			<div>
				<h4>Phone</h4>
				<p>+01 123-456-4590</p>
			</div>
		</div>
		<div>
			<div>
				<h4>Email</h4>
				<p>yourmail@gmail.com</p>
			</div>
		</div>
		<div>
			<div>
				<h4>Location</h4>
				<p>800, Lorem Street, US</p>
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
</body>

<script src="js/menu.js"></script>
<script src="js/slider.js"></script>
<script src="js/special-menu.js"></script>
<script src="js/gallery.js"></script>
<script src="js/customerReview.js"></script>

</html>