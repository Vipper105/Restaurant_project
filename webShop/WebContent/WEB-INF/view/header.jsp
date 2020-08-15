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
	<header>
		<nav>
			<div class="pc-layout">
				<div class="menu-top">
					<a href="index.html"> <img src="images/logo.png" alt="" />
					</a>

					<div id="navbars-rs-food">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="/webShop/menu/list">Menu</a></li>
							<li><a href="about.html">About</a></li>
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
									<a href="blog.html">blog</a> <a href="blog-details.html">blog
										Single</a>
								</div></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</header>
</body>
</html>