<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="tp.kits3.livedinner.VO.Menu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//String contextPath =pageContext.getRequest().getServletContext();
	String contextPath = request.getContextPath();

	List<Menu> menuList = (ArrayList<Menu>) request.getAttribute("MenuList");
	//int length = menuList.size();
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
<link rel="shortcut icon" href="<%=contextPath%>/images/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="<%=contextPath%>/images/apple-touch-icon.png">

<!-- Site CSS -->
<link rel="stylesheet" href="<%=contextPath%>/css/index.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif] -->
</head>
<body>
	<!-- Start header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- End header -->

	<%
		for (Menu menu : menuList) {
	%>
	<div>

		<div>
			<h2><%=menu.getMuname()%></h2>
			<p><%=menu.getDetails()%></p>
		</div>

	</div>

	<%
		}
	%>
	<!-- Start All Pages -->
	<div>

		<%=menuList.size()%>
		<div>

			<div>
				<h1>Special Menu</h1>
			</div>

		</div>
	</div>
	<!-- End All Pages -->

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
							aria-controls="v-pills-messages" aria-selected="false">Lunch</a>
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
										<img src="<%=contextPath%>/images/img-01.jpg" alt="Image">
										<div>
											<h4>Special Drinks 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$7.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-02.jpg" alt="Image">
										<div>
											<h4>Special Drinks 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$9.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-03.jpg" alt="Image">
										<div>
											<h4>Special Drinks 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$10.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-04.jpg" alt="Image">
										<div>
											<h4>Special Lunch 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$15.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-05.jpg" alt="Image">
										<div>
											<h4>Special Lunch 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$18.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-06.jpg" alt="Image">
										<div>
											<h4>Special Lunch 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$20.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-07.jpg" alt="Image">
										<div>
											<h4>Special Dinner 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$25.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-08.jpg" alt="Image">
										<div>
											<h4>Special Dinner 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$22.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-09.jpg" alt="Image">
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
										<img src="<%=contextPath%>/images/img-01.jpg" alt="Image">
										<div>
											<h4>Special Drinks 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$7.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-02.jpg" alt="Image">
										<div>
											<h4>Special Drinks 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$9.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-03.jpg" alt="Image">
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
										<img src="<%=contextPath%>/images/img-04.jpg" alt="Image">
										<div>
											<h4>Special Lunch 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$15.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-05.jpg" alt="Image">
										<div>
											<h4>Special Lunch 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$18.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-06.jpg" alt="Image">
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
										<img src="<%=contextPath%>/images/img-07.jpg" alt="Image">
										<div>
											<h4>Special Dinner 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$25.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-08.jpg" alt="Image">
										<div>
											<h4>Special Dinner 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5>$22.79</h5>
										</div>
									</div>
								</div>

								<div>
									<div>
										<img src="<%=contextPath%>/images/img-09.jpg" alt="Image">
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

	<!-- Start QT -->
	<div>
		<div>
			<div>
				<div>
					<p>" If you're not the one cooking, stay out of the way and
						compliment the chef. "</p>
					<span>Michael Strahan</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->

	<!-- Start Customer Reviews -->
	<div>
		<div>
			<div>
				<div>
					<div>
						<h2>Customer Reviews</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting</p>
					</div>
				</div>
			</div>
			<div>
				<div>
					<div id="reviews" data-ride="carousel">
						<div>
							<div>
								<div>
									<img src="<%=contextPath%>/images/quotations-button.png" alt="">
								</div>
								<h5>
									<strong>Paul Mitchel</strong>
								</h5>
								<h6>Web Developer</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
									metus, dapibus nec turpis vel, semper malesuada ante. Idac
									bibendum scelerisque non non purus. Suspendisse varius nibh non
									aliquet.</p>
							</div>
							<div>
								<div>
									<img src="<%=contextPath%>/images/quotations-button.png" alt="">
								</div>
								<h5>
									<strong>Steve Fonsi</strong>
								</h5>
								<h6>Web Designer</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
									metus, dapibus nec turpis vel, semper malesuada ante. Idac
									bibendum scelerisque non non purus. Suspendisse varius nibh non
									aliquet.</p>
							</div>
							<div>
								<div>
									<img src="<%=contextPath%>/images/quotations-button.png" alt="">
								</div>
								<h5>
									<strong>Daniel vebar</strong>
								</h5>
								<h6>Seo Analyst</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
									metus, dapibus nec turpis vel, semper malesuada ante. Idac
									bibendum scelerisque non non purus. Suspendisse varius nibh non
									aliquet.</p>
							</div>
						</div>
						<a href="#reviews" role="button" data-slide="prev"> <i
							aria-hidden="true"></i> <span>Previous</span>
						</a> <a href="#reviews" role="button" data-slide="next"> <i
							aria-hidden="true"></i> <span>Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Customer Reviews -->


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