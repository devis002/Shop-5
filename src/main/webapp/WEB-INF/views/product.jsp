<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
</head>
<body>
	<h1>Products Data</h1>
	<form:form action="product.do" method="POST" commandName="product">
		<table>
			<tr>
				<td>Product ID</td>
				<td><form:input path="productid" /></td>
			</tr>
			<tr>
				<td>Product name</td>
				<td><form:input path="productname" /></td>
			</tr>
			<tr>
				<td>Product quantity</td>
				<td><form:input path="productquantity" /></td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td><form:input path="productdescription" /></td>
			</tr>

			</form>
			<tr>
				<td colspan="2"><input type="submit" name="action" value="Add" />
					<input type="submit" name="action" value="Edit" /> <input
					type="submit" name="action" value="Delete" /> <input type="submit"
					name="action" value="Search" /></td>
			</tr>
		</table>
		<form method="POST" action="upload" enctype="multipart/form-data">
			File to upload: <input type="file" name="file"> Name: <input
				type="text" name="name"> <input type="submit" value="Upload">
			Press here to upload the file!
			<td>${name}</td>
			</form>
	</form:form>
<a href="viewall">viewall</a>
</body>

</html>