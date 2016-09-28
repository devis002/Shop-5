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
		<h2>Add Product</h2>
		<hr>
		<form:form action="crudoper" method="POST"
			enctype="multipart/form-data" commandName="product">
			<div class="row">
				<div class="col-sm-2"><label for="sel1">Select Category:</label></div>
				<div class="form-group col-md-5">
					
					<form:select class="form-control " path="category" id="sel1">
						<form:option value="Nikon">Nikon</form:option>
						<form:option value="Canon">Canon</form:option>
						<form:option value="Sony">Sony</form:option>
					</form:select>
				</div>
			</div>

			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="email">Product Id:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="email"
							placeholder="Enter id" path="productid"></form:input>
						
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="pwd">Product Name:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="pwd"
							placeholder="Enter name" path="productname"></form:input>
						<form:errors path="productname" cssClass="error" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="pwd">Product Quantity:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="pwd"
							placeholder="Enter quantity" path="productquantity"></form:input>
						<form:errors path="productquantity" cssClass="error" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="pwd">Product Price:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="pwd"
							placeholder="Enter price" path="productprice"></form:input>
						<form:errors path="productprice" cssClass="error" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="pwd">Product Description:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="pwd"
							placeholder="Enter description" path="productdescription"></form:input>
						<form:errors path="productdescription" cssClass="error" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="pwd">Product Discount:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="pwd"
							placeholder="Enter discount" path="discount"></form:input>
						<form:errors path="discount" cssClass="error" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-2"><label for="sel1">Deals of the Day</label></div>
					<div class="form-group col-md-5">
					
					<form:select class="form-control " path="status" id="sel1">
						<form:option value="false">Disable</form:option>
						<form:option value="True">Enable</form:option>
					</form:select>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="pwd">Image:</label>
					<div class="col-md-5">
						<form:input type="file" class="form-control" id="pwd"
							placeholder="Enter image" path="image"></form:input>
						<form:errors path="image" cssClass="error" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group">
					<label class="control-label col-md-2" for="pwd">Image name:</label>
					<div class="col-md-5">
						<form:input type="name" class="form-control" id="pwd"
							placeholder="Enter imagename" path="imagename"></form:input>
						<form:errors path="imagename" cssClass="error" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" name="action" value="Add"
							class="btn btn-default">Add</button>
						<button type="submit" name="action" value="Edit"
							class="btn btn-default">Update</button>
					</div>
				</div>
			</div>
			
		</form:form>
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>