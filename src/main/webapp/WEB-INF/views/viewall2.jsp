<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Black+Ops+One&effect=wallpaper">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Viewall</title>

</head>
<jsp:include page="includes.jsp" />
<jsp:include page="header.jsp" />
	<!--Container 1-->
<div class="row">
<c:forEach items="${productList}" var="product">
		<div class="col-xs-3">
			<div class="thumbnail">
				
				<img src="<c:url value="resources/images/${product.imagename}.jpg"/>"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="font-effect-wallpaper" class="col-md-12 col-xs-12" style="color:red">
						
							<center><h3>${product.productname}</h3></center>
							
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<center><label>${product.productprice}</label></center>
							</h3>
							<hr>
						</div>
					</div>
					<security:authorize access="hasAnyRole('ROLE_ANONYMOUS')"> 
					<div class="row">
						<div class="col-md-12">
						<center><a href="<c:url value='desc/${product.productid}'/>" class="btn btn-default  "><span class="glyphicon glyphicon-th-list"></span> view in detail</a></center>
						</div>
						<%-- <div class="col-md-6">
							<a href="addtocart/${product.productid}" class="btn btn-default"><span
								class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
						</div> --%>
					</div>
					</security:authorize> <security:authorize access="hasRole('ROLE_USER')"> 
					<div class="row">
						<div class="col-md-12">
							<center><a href="<c:url value='desc/${product.productid}'/>" class="btn btn-default "><span class="glyphicon glyphicon-th-list"></span>view in detail</a></center>
						</div>
						<%-- <div class="col-md-6">
							<a href="addtocart/${product.productid}" onClick="message()" class="btn btn-default"><span
								class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
						</div> --%>
					</div>
					</security:authorize> 
					
		
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<div class="row">
						<div class="col-md-6">
							<a href="<c:url value='edit/${product.productid}'/>" class="btn btn-default "><span
								class="		glyphicon glyphicon-pencil"></span> edit</a>
						</div>
						
						<div class="col-md-6">
							<a href="<c:url value='delete/${product.productid}'/>" class="btn btn-default"><span
								class="	glyphicon glyphicon-trash"></span> Delete</a>
						</div>
					</div>
				</security:authorize>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>	
<jsp:include page="footer.jsp" />
</html>