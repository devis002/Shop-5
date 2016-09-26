<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon"  href="https://cdn4.iconfinder.com/data/icons/adore/118/Camera.png">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<!-- Script for logout -->
<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>
<c:url value='logout' var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm"></form>
<body>
	<!--Navigation Bar-->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
			<!-- Clickart logo -->
			<a class="navbar-brand" href="<c:url value="/home"/>"><img class="img-responsive logo" src="https://cdn4.iconfinder.com/data/icons/adore/118/Camera.png" alt="" width="50" height="50"></a>
				<a class="navbar-brand" style="color: white" href="<c:url value="/home"/>">Clickart</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="<c:url value="/home"/>" style="color: white">Home</a></li>
				<li><a href="<c:url value="/viewall"/>" style="color: white">view all</a></li>
				<li><a href="<c:url value="/Angularview"/>" style="color: white">Angular view</a></li>
				<security:authorize access="hasRole('ROLE_USER')">
				<li><a href="<c:url value="/myorders"/>" style="color: white">Myorders</a></li> 
				</security:authorize>
				<!--DropDown Button 1-->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" style="color: white">Brands<strong
						class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/nikonbrand"/>">Nikon</a></li>
						<li><a href="<c:url value="/canonbrand"/>">Canon</a></li>
						<li><a href="<c:url value="/sonybrand"/>">Sony</a></li>

					</ul></li>
					<!-- Add Product Only used by admin -->
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="<c:url value="/product"/>" style="color: white">AddProduct</a></li>
				</security:authorize>
			</ul>
			
			
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${!empty pageContext.request.userPrincipal.name}">
					<li><a href="<c:url value="/home"/>" style="color: white"> <span
							class="glyphicon glyphicon-user"></span>Hi..${pageContext.request.userPrincipal.name}
					</a></li>
					<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="<c:url value="/cart"/>" style="color: white"><span
								class="glyphicon glyphicon-shopping-cart"><span class="badge">${cartlength}</span></span>MyCart</a></li>
					</security:authorize>
					<li><a href="javascript:formSubmit()" style="color: white"><span
							class="glyphicon glyphicon-log-out"></span>Logout</a></li>
				</c:if>
			</ul>

			<!-- for anonymous user or non register user withoutusername -->
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty pageContext.request.userPrincipal.name}">
					<li><a href="<c:url value="/cart"/>" style="color: white"><span
							class="glyphicon glyphicon-shopping-cart"><span class="badge">${cartlength}</span></span> My Cart</a></li>
					<li><a href="<c:url value="/memberShip.obj"/>" style="color: white"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="<c:url value="/login"/>" style="color: white"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
			</ul>
			
		</div>
	</nav>
	<hr>