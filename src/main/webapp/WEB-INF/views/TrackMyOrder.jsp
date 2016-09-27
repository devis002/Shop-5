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
		<h2>Track Management</h2>
		<hr>
		<form:form action="getorders" method="POST" modelAttribute="hub">
		<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="orderId">orderId:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="orderId"
							placeholder="Enter location" path="orderId"></form:input>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" name="action" class="btn btn-default">GetOrder</button>

					</div>
				</div>
			</div>
		</form:form>
		
		<table class="tg">
	<tr>
		<th width="80">OrderId</th>
		<th width="80">Date</th>
		<th width="80">Time</th>
		<th width="150">Status</th>
		<th width="60">Location</th>
	</tr>
	<c:forEach items="${hubList}" var="hubs">
		<tr>
			<td>${hubs.orderId}</td>
			<td>${hubs.date}</td>
			<td>${hubs.time}</td>
			<td>${hubs.status}${hubs.location}</td>
			<td>${hubs.location}</td>
			
			
		</tr>
	</c:forEach>
	</table> 
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>