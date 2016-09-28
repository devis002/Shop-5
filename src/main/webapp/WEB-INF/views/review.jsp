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
		<h2>Reviews</h2>
		<hr>
		<div class="row">
	<div class="col-md-4">
	</div>
		<div class="col-md-6">

				<img src="<c:url value="/resources/images/${product.imagename}.jpg"/>"
					class="img-responsive">
					
		<div class="col-md-6">
			<center><h1>${product.category}${product.productname}</h1></center>
			<hr>
			<center><h3><i class="fa fa-inr" style="color:white" ><fmt:formatNumber value="${product.discountPrice}" type="currency" pattern="#,##,##,##,###.00"/></i></h3></center>
			<hr>
		</div>
	</div></div>
		
		<form:form action="addreview/${product.productid}" method="POST" commandName="review">
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="title">Title:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="title"
							placeholder="Enter Title" path="title"></form:input>
						
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="description">Description:</label>
						<div class="col-md-5">
							<form:input type="name" class="form-control" id="description"
							placeholder="Enter description" path="description"></form:input>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="name">Name:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="name"
							placeholder="Enter Your Name" path="name"></form:input>
						
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" name="action" value="add"
							class="btn btn-default">Submit</button>
						
					</div>
				</div>
			</div>
			
		</form:form>
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>