<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sucess Shoping</title>
  <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>"rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Tangerine">
<style>
      body {
        font-family: 'Tangerine', serif;
        font-size: 48px;
      }
</style>
  </head>
<body>
<jsp:include page="includes.jsp" />
<jsp:include page="header.jsp" />
<div class="container">
<center><div style="font-family: 'Tangerine', serif; font-size: 48px; text-shadow: 4px 4px 4px #aaa;">Thanks For Shoping with us</div></center>
<h3>Please check your mail for order details...</h3>
<div class="row">
<hr>
<div class="col-md-4"></div>
<div class="col-md-4">
<img src="<c:url value="resources/images/mainimages/delivery-truck.gif"/>" height="300" width="300">
</div>
<div class="col-md-4"></div>
</div>
<hr>
<center><a href="<c:url value="home"/>"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-home"></span> Home
        </button></a></center>
<hr>
</div>
</body>
<jsp:include page="footer.jsp" />
</html>