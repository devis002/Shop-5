<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Viewall</title>
</head>
<body>
	<table border="8">
		<th>Product ID</th>
		<th>Product name</th>
		<th>Product quantity</th>
		<th>Product Description</th>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.productid}</td>
				<td>${product.productname}</td>
				<td>${product.productquantity}</td>
				<td>${product.productdescription}</td>
				<td><a href=product>Edit</a>
				<td><a href=delete>Delete</a>
			</tr>
		</c:forEach>
	</table>
</body>
</html>