<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Details</title>
</head>
<jsp:include page="includes.jsp" />
<jsp:include page="header.jsp" />
<hr>
<body>
	<div class="content">
		<fieldset>
			<legend style=color:white>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<form:form modelAttribute="registrationDetails">
				<form:label path="name">Name:</form:label>${registrationDetails.name}
					<br />
				<br />
				<form:label path="mail_id">Email :</form:label>${registrationDetails.mail_id}
					<br />
				<br />
				<form:label path="mobile_number">Mobile number :</form:label>${registrationDetails.mobile_number}
					<br />
				<br />
				
				
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" style=color:black type="submit" value="Edit" />
				<input name="_eventId_submit" style=color:black type="submit" value="Confirm Details" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>