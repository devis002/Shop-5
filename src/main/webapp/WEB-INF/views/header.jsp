<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="<c:url value="/resources/bootstrap/css/style.css"/>"
	rel="stylesheet">
</head>
<body>
<p align="right">
		Existing User| <a href="login">Login</a>
	</p>
	<p align="right">
		New User | <a href="register">Register</a>
	</p>
	<h1>
		CLIKART

		<h4 align="center">contact us on: 044 253 351 or
			clickart@hotmail.com</h4>

	</h1>
	</div>
	<div class="row">
		<div class="co-12">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">

					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">HOME</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">BRANDS<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">Nikon</a></li>
								<li><a href="#">Canon</a></li>
								<li><a href="#">Sony</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">CATEGORY<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">DSLR</a></li>
								<li><a href="#">Point and Shoot</a></li>
								<li><a href="#">Instant</a></li>
								<li><a href="#">Action and LifeStyle</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">ACCESSORIES<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">Camera Bag</a></li>
								<li><a href="#">Camera Lens</a></li>
								<li><a href="#">Tripod</a></li>
								<li><a href="#">MemoryCard</a></li>

							</ul></li>
						</button>
						<a class="navbar-brand" href="product">Product</a>


					</ul>
					<ul class="nav navbar-nav pull-right">
						<a href="#" class="btn btn-default btn-lg "> <span
							class="glyphicon glyphicon-shopping-cart"></span> My Cart
						</a>

					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<span class="glyphicon glyphicon-search"></span> <input
								type="text" class="form-control " autofocus
								placeholder="so,What are you wishing for today" size="40">
						</div>
						<button type="submit" class="btn btn-default">Search</button>
					</form>

				</div>

			</nav>
		</div>
	</div>

</body>

</html>