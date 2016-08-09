<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login form</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<script src="<c:url value="/resources/css/stylelog.css"/>"></script>
</head>
<body>
	<form:form method="post" modelAttribute="userForm" action="login.do">
		<form:input path="username" type="text" /> <!-- bind to user.name-->
		<form:input path="password" type="text" />
		<input type="submit" value="login" />
			</form:form>
				<!----------end form----------->
		
		</body>
		</html>