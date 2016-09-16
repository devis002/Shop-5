<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Shipment</title>
</head>
<jsp:include page="includes.jsp" />
<jsp:include page="header.jsp" />
<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<form:form modelAttribute="shipment">
				<form:label path="name">Name:</form:label>${shipment.name}
					<br />
				<br />
				<form:label path="address">address :</form:label>${shipment.address}
					<br />
				<br />
				<form:label path="mobilenumber">Mobile number :</form:label>${shipment.mobilenumber}
					<br />
				<br />
				<form:label path="pincode">Pincode :</form:label>${shipment.pincode}
					<br />
				<br />
				
				
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" style=color:black type="submit" value="Edit" />
				<input name="_eventId_submit" style=color:black type="submit" value="ConfirmShipment" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>