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
.error{
color:#ff0033;
font-style:italic;
font-weight:bold;

}
</style>
</head>
<body>
	<jsp:include page="includes.jsp" />
	<jsp:include page="header.jsp" />
	<div class="container">
		<h2>Track Management</h2>
		<hr>
		<form:form action="trackoperation" method="POST"
			 commandName="hub">
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="form-group col-md-5">
					<label for="sel1">Status:</label>
					<form:select class="form-control" path="status" id="sel1">
						<form:option value="Your order is accepted at">Accepted</form:option>
						<form:option value="Your order gets packed successfuly at">Inprogress</form:option>
						<form:option value="Your order is shipped to">shipped</form:option>
						<form:option value="Your order is out for delivery from">OutforDelivery</form:option>
					</form:select>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="loction">orderId:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="email"
							placeholder="Enter location" path="orderId"></form:input>
						
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="loction">Location:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="email"
							placeholder="Enter location" path="location"></form:input>
						
					</div>
				</div>
			</div>
			
			

			<div class="row">
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" name="action" value="Add"
							class="btn btn-default">Add</button>
						<button type="submit" name="action" value="Edit"
							class="btn btn-default">Edit</button>
					</div>
				</div>
			</div>
		</form:form>
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>