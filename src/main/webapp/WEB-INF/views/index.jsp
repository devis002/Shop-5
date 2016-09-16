<!DOCTYPE html>
<html lang="en">
<head>
<title>Clickart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<style>
body {
	background-color: black;
	color: white
}

.menu ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.menu li {
	padding: 8px;
	margin-bottom: 7px;
	background-color: #33b5e5;
	color: #ffffff;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.menu li:hover {
	background-color: #0099cc;
}

.aside {
	background-color: #33b5e5;
	padding: 15px;
	color: #ffffff;
	text-align: center;
	font-size: 14px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

hr {
	color: white;
}

div.img {
	margin: 5px;
	border: 1px solid #ccc;
	float: left;
	width: 180px;
}

div.img:hover {
	border: 1px solid #777;
}

div.img img {
	width: 100%;
	height: auto;
}

div.desc {
	padding: 15px;
	text-align: center;
}
</style>
<jsp:include page="includes.jsp" />
<jsp:include page="header.jsp" />
<body>
	<!--Navigation Bar Ends Here-->
<div class="container">
		<div class="row">
			<div class="col-md-2">
			<hr>
				<img src ="<c:url value="resources/images/mainimages/headerbg.jpg" />">
			</div>
		</div>
</div> 
	<!--Second Container Starts Here-->
	<div class="container">
		<div class="row">
			<h2>
				<marquee>Welcome to Clickart!!!.... Have a happy
					shopping!!!!</marquee>
			</h2>
		</div>
	</div>
	<!--Second Container Ends Here-->
	<!--Third Container Starts Here-->
	<div class="container">
		<div class="row">
			<div class="col-md-2 menu">
				<ul>
					<li>All BRANDS</li>
					<a href="nikonbrand">
						<li>NIKON</li>
					</a>
					<a href="canonbrand"><li>CANON</li></a>
					<a href=sonybrand">
					<li>SONY</li></a>
				</ul>
			</div>
			<!--Carousel Starts Here-->
			<div class="col-md-7">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img
								src="<c:url value="http://img5a.flixcart.com/www/promos/new/20160714_161447_730x300_d87b98b7-5127-4c59-ae7b-4138ca17ec4c.jpg"/>"
								alt="...">

						</div>

						<div class="item">
							<img
								src="<c:url value="http://img5a.flixcart.com/www/promos/new/20151201_122757_730x300_image-730-300.jpg"/>"
								alt="...">

						</div>

						<div class="item">
							<img
								src="<c:url value="http://img5a.flixcart.com/www/promos/new/20160713_175017_730x300_canona10a100.jpg"/>"
								alt="...">

						</div>

						<div class="item">
							<img
								src="<c:url value="http://img5a.flixcart.com/www/promos/new/20151201_122757_730x300_image-730-300.jpg"/>"
								alt="...">

						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<!--Carousel Ends Here-->
			<!--OfferZone Grid Starts Here-->
			<div class="col-md-3">
				<div class="aside">
					<h2>Dslr OfferZone</h2>
					<p>Buy a cam with smile</p>
					<a href="nikon"><img
						src="<c:url value="resources/images/mainimages/ad1.gif"/>"
						height="150" width="150"></a>

				</div>
			</div>
			<!--offerzone ends-->
		</div>
	</div>
	<!--Third Container Ends Here-->
	<hr>
	<center>
		<h1>Brands</h1>
	</center>
	<!--Fourth Container Starts-->
	<div class="container">
		<!--row Start-->
		<div class="row">
			<div class="col-md-4">
				<p>
					<a href="nikonbrand"><img
						src="<c:url value="https://s3-us-west-2.amazonaws.com/pcw-uploads/logos/nikon-promo-codes-coupons.png" />"
						height="300" width="350"></a>
				</p>
			</div>
			<div class="col-md-4">
				<p>
					<a href="canonbrand"><img
						src="<c:url value="http://associatednews.info/content/wp-content/uploads/2011/10/black-canon.jpg" />"
						height="280" width="350"></a>
				</p>
			</div>
			<div class="col-md-4">
				<p>
					<a href="sonybrand"><img
						src="<c:url value="http://www.radovanstolarcik.com/wp-content/themes/radonew/images/portfolio/thumbs/sony1.jpg" />"
						height="300" width="350"></a>
				</p>
			</div>
		</div>
		<!--row Ends-->
	</div>
<!--fourt Container Ends-->
</body>
<jsp:include page="footer.jsp" />
</html>

