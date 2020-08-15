<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//String contextPath =pageContext.getRequest().getServletContext();
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
<title>Restaurant Demo</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<!-- <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"> -->
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">

<!-- Site CSS -->
<!-- Custom CSS for each page -->
<link rel="stylesheet" href="<%=contextPath%>/css/index.css">

</head>
<body>
	<!-- Start Footer -->
	<footer>
		<div class="footer-bg"></div>
		<div class="footer-top pc-layout">
			<ul>
				<li>
					<div>
						<h3>ABOUT US</h3>
						<p>Integer cursus scelerisque ipsum id efficitur. Donec a dui
							fringilla, gravida lorem ac, semper magna. Aenean rhoncus ac
							lectus a interdum. Vivamus semper posuere dui.</p>
					</div>
				</li>
				<li>
					<div>
						<h3>SUBCRIBE</h3>
						<div>
							<form>
								<input name="EMAIL" id="subs-email"
									placeholder="Email Address..." type="email">
								<button type="submit">SUBSCRIBE</button>
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
				</li>
				<li>
					<div>
						<h3>CONTACT INFORMATION</h3>
						<p>Ipsum Street, Lorem Tower, MO, Columbia, 508000</p>
						<p>
							<a href="#">+01 2000 800 9999</a>
						</p>
						<p>
							<a href="#"> info@admin.com</a>
						</p>
					</div>
				</li>
				<li>
					<div>
						<h3>OPEN OURS</h3>
						<p>
							<span>Monday: Closed</span>
						</p>
						<p>
							<span>Tue-Wed : 9:Am - 10PM</span>
						</p>
						<p>
							<span>Thu-Fri : 9:Am - 10PM</span>
						</p>
						<p>
							<span>Sat-Sun : 5:PM - 10PM</span>
						</p>
					</div>
				</li>
			</ul>
		</div>

		<div class="footer-bottom">
			<div>
				<p>
					All Rights Reserved. &copy; 2018 <a href="#">Live Dinner
						Restaurant</a> Design By : <a href="#">html design</a>
				</p>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

</body>
</html>