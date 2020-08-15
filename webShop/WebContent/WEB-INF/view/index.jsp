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
	
</head>

<%
	List<Menu> listMenu = (ArrayList<Menu>) request.getAttribute("listMenu");
%>

<body>

	<!-- %=  Bỏ giá trị vào HTML -->
	<%
		// =contextPath
	%>
	<!-- ==> Lấy đường dẫn, dùng khi thay đổi đường dẫn ở Server -->

	<!-- Start header -->
	<jsp:include page="header.jsp"></jsp:include>
	
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

			<%
				for (int i = 0; i < listMenu.size(); i++) {
			%>
			<div class="gallary-image" onmouseover="bigImg('gm<%=i%>')"
				onmouseout="normalImg('gm<%=i%>')">
				<a href="<%=contextPath%>/<%=listMenu.get(i).getIntro()%>"> <img
					src="<%=contextPath%>/<%=listMenu.get(i).getIntro()%>"
					alt="Gallery Images" class="img-gl" id="gm<%=i%>">
				</a>

			</div>

			<%
				}
			%>


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

	<!-- Start Contact info -->
	<div class="contact">
		<div class="pc-layout">
			<ul>
				<li>
					<span class="ico-contact">&#9742</span>
					<div>	
						<h4>Phone</h4><br/>
						<p>
							+01 123-456-4590
						</p>
					</div>
					<span class="contact-arrow">❯❯</span>
				</li>
				<li>
					<span class="ico-contact">&#9993</span>
					<div>
						<h4>Email</h4><br/>
						<p>s
							yourmail@gmail.com
						</p>
					</div>
					<span class="contact-arrow">❯❯</span>
				</li>
				<li>
					<span class="ico-contact">&#9992</span>
					<div>
						<h4>Location</h4><br/>
						<p>
							800, Lorem Street, US
						</p>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- End Contact info -->

	<!-- End Contact info -->

	<!-- Start Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- End Footer -->

	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i
		aria-hidden="true"></i></a>

	<!-- ALL JS FILES -->
	<!-- ALL PLUGINS -->	
<script src="<%=contextPath%>/js/menu.js"></script>
<script src="<%=contextPath%>/js/slider.js"></script>
<script src="<%=contextPath%>/js/special-menu.js"></script>
<script src="<%=contextPath%>/js/gallery.js"></script>
<script src="<%=contextPath%>/js/customerReview.js"></script>
</body>


</html>