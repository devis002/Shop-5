<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/respond.js"/>"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/css/style.css"/>"></script>
	</head>
<jsp:include page="header.jsp" />
<body>

	<div class="row">
		<h2>
			<marquee>Welcome to Clickart!!!.... Have a happy
				shopping!!!!</marquee>
		</h2>
		<div class="col-3 menu">
			<ul>
				<li>All BRANDS</li>
				<a href="nikon"><li>NIKON</li></a>
				<a href="canon"><li>CANON</li></a>
				<li>SONY</li>
			</ul>
		</div>

		<div class="col-6">
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
						<img src="<c:url value="http://img5a.flixcart.com/www/promos/new/20160714_161447_730x300_d87b98b7-5127-4c59-ae7b-4138ca17ec4c.jpg"/>" alt="...">
						
					</div>

					<div class="item">
						<img src="<c:url value="http://img5a.flixcart.com/www/promos/new/20151201_122757_730x300_image-730-300.jpg"/>" alt="...">
							
					</div>

					<div class="item">
						<img src="<c:url value="http://img5a.flixcart.com/www/promos/new/20160713_175017_730x300_canona10a100.jpg"/>" alt="...">
							
					</div>

					<div class="item">
						<img src="<c:url value="http://img5a.flixcart.com/www/promos/new/20151201_122757_730x300_image-730-300.jpg"/>" alt="...">
							
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

		<div class="col-3 right">
			<div class="aside">
				<h2>Want To Buy Dslr</h2>
				<p>Jus Click here!...Top Trending Dslr</p>
				<img alt="logo1"
					src="https://media.giphy.com/media/bIslprHmm5i/giphy.gif"
					height="150px" ,width="150px">
			</div>
		</div>

	</div>
	<hr>
	<div class="row">
		<H1>
			<center>BRANDS</center>
		</H1>
		<hr>
		<div class="col-3 one margin">
			<p>
				<a href="nikon"><img src ="<c:url value="https://s3-us-west-2.amazonaws.com/pcw-uploads/logos/nikon-promo-codes-coupons.png" />" height="300" width="350" ></a>
			</p>
		</div>
		<div class="col-3 one margin">
			<p>
				<a href="nikon"><img src ="<c:url value="http://fullhdpictures.com/wp-content/uploads/2016/07/Canon-Logo-HD.jpg"/>"  height="300" width="320" ></a>
			</p>
		</div>
		<div class="col-3 one margin pad">
			<p>
				<a href="nikon"><img src ="<c:url value="https://i.ytimg.com/vi/FD5c_r0TJbE/maxresdefault.jpg"/>"  height="200" width="300" ></a>
			</p>
		</div>
		
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
