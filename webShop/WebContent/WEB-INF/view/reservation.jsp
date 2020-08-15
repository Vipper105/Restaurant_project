<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
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

</head>

<body>
	<!-- Start header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- End header -->

	<!-- Start All Pages -->
	<div>
		<div>
			<div>
				<div>
					<h1>Reservation</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	<!-- Start Reservation -->
	<div>
		<div>
			<div>
				<div>
					<div>
						<h2>Reservation</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting</p>
					</div>
				</div>
			</div>
			<div>
				<div>
					<div>
						<form id="contactForm">
							<div>
								<div>
									<h3>Book a table</h3>
									<div>
										<div>
											<input id="input_date" name="date" type="text" value=""
												equired data-error="Please enter Date">
											<div></div>
										</div>
									</div>
									<div>
										<div>
											<input id="input_time" required
												data-error="Please enter time">
											<div></div>
										</div>
									</div>
									<div>
										<div>
											<select id="person" required
												data-error="Please select Person">
												<option disabled selected>Select Person*</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
											</select>
											<div></div>
										</div>
									</div>
								</div>
								<div>
									<h3>Contact Details</h3>
									<div>
										<div>
											<input type="text" id="name" name="name"
												placeholder="Your Name" required
												data-error="Please enter your name">
											<div></div>
										</div>
									</div>
									<div>
										<div>
											<input type="text" placeholder="Your Email" id="email"
												name="email" required data-error="Please enter your email">
											<div></div>
										</div>
									</div>
									<div>
										<div>
											<input type="text" placeholder="Your Numbar" id="phone"
												name="phone" required data-error="Please enter your Numbar">
											<div></div>
										</div>
									</div>
								</div>
								<div>
									<div>
										<button id="submit" type="submit">Book Table</button>
										<div id="msgSubmit"></div>
										<div></div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Reservation -->

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
									<img src="images/quotations-button.png" alt="">
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
									<img src="images/quotations-button.png" alt="">
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
									<img src="images/quotations-button.png" alt="">
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