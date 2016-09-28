<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
<meta charset="utf-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>

.error {
	color: #ff0033;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<jsp:include page="includes.jsp" />
	<jsp:include page="header.jsp" />
	<div class="container">
		<h2>Orderd Products</h2>
		<hr>
		
		<table class="tg" border="1">
	<tr>
		<th width="80">OrderId</th>
		<th width="80">CartId</th>
		<th width="150">Mail_id</th>
		<th width="80">ShipmentId</th>
		
	</tr>
	<c:forEach items="${orders}" var="order">
		<tr>
			<td>${order.orderId}</td>
			<td>${order.cart.cartId}</td>
			<td>${order.regdet.mail_id}</td>
			<td><center>${order.shipment.shipid}</center></td>
		</tr>
	</c:forEach>
	</table> 
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>