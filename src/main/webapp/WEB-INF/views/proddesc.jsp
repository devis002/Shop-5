<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clickart</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width= device-width,initial-scale= 1.0">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript">
    function Validate() {
    	alert("Your item is added Sucessfully");
    }
</script>
</head>

<body>
<jsp:include page="includes.jsp" />
<jsp:include page="header.jsp" />
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
			
			<center><div class="col-md-12">
				<a href="<c:url value='addtocart/${product.productid}'/>" class="btn btn-default" onclick="return Validate()"> <span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
			</div></center>
		</div>
	</div>

	
	<div class="row">
		<div class="col-xs-12">
			<ul id="myTab" class="nav nav-tabs nav_tabs">
				<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
			
			</ul>
		</div>	
	</div>
	
	<div class="row">
		<div class="col-xs-12">					
			<ul>${product.productdescription}</ul>
			</div>
	</div>
</div>
<hr>
<a href="<c:url value="/review/${product.productid}"/>"><button type="button" class="btn btn-success">Write Review</button></a>
</body>	
<jsp:include page="footer.jsp" />
</html>