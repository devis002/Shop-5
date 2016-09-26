<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="<c:url value="/resources/bootstrap/css/style.css"/>" rel="stylesheet">
<title>Clickart</title>
</head>
<body>
<hr>
<center><button onclick="goBack()" style=color:black>Go Back</button></center>

<script>
function goBack() {
    window.history.back();
    
}
</script>
<hr>
<div class="container">
	<div class="row">
		<div class="col-3 column">
			<h4>Information</h4>
			<ul class="nav">
				<li><a href="about-us.html">Products</a></li>
				<li><a href="about-us.html">Services</a></li>
				<li><a href="about-us.html">Benefits</a></li>
				<li><a href="elements.html">Developers</a></li>
			</ul>
		</div>
		<div class="col-3 column">
			<h4>Follow Us</h4>
			<ul class="nav">
				<li><a href="#">Twitter</a></li>
				<li><a href="#">Facebook</a></li>
				<li><a href="#">Google+</a></li>
				<li><a href="#">Pinterest</a></li>
			</ul>
		</div>
		<div class="col-3 column">
			<h4>Contact Us</h4>
			<ul class="nav">
				<li><a href="#">Email</a></li>
				<li><a href="#">Headquarters</a></li>
				<li><a href="#">Management</a></li>
				<li><a href="#">Support</a></li>
			</ul>
		</div>
		<div class="col-3 column">
			<h4>Customer Service</h4>
			<ul class="nav">
				<li><a href="#">About Us</a></li>
				<li><a href="#">Delivery Information</a></li>
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Terms &amp; Conditions</a></li>
			</ul>
		</div>
	</div>
	<!--/row-->
	<p class="text-right">©Clickart</p>
</div>
</body>
</html>