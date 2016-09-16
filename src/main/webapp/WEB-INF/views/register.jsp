<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Sofia'
	rel='stylesheet' type='text/css'>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background: #2E3740;
	background-image: url("https://m.popkey.co/23ce2a/g3m5Z.gif?c=popkey-web&p=popkey&i=sciencetech-ent&l=direct&f=.gif");
	color: #435160;
	font-family: "Open Sans", sans-serif;
}

h2 {
	color: #6D7781;
	font-family: "Sofia", cursive;
	font-size: 15px;
	font-weight: bold;
	font-size: 3.6em;
	text-align: center;
	margin-bottom: 20px;
}

a {
	color: #435160;
	text-decoration: none;
}

.login {
	width: 350px;
	position: absolute;
	top: 10%;
	left: 50%;
	margin-left: -175px;
}


input[type=checkbox] {
	display: none;
}

label {
	display: block;
	position: absolute;
	margin-right: 10px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: transparent;
	content: "";
	transition: all 0.3s ease-in-out;
	cursor: pointer;
	border: 3px solid #435160;
}

#agree:checked ~ label[for=agree] {
	background: #435160;
}




.forgot {
	margin-top: 30px;
	display: block;
	font-size: 11px;
	text-align: center;
	font-weight: bold;
}

.forgot:hover {
	margin-top: 30px;
	display: block;
	font-size: 11px;
	text-align: center;
	font-weight: bold;
	color: #6D7781;
}

.agree {
	padding: 30px 0px;
	font-size: 12px;
	text-indent: 25px;
	line-height: 15px;
}

::-webkit-input-placeholder {
	color: #435160;
	font-size: 12px;
}

.animated {
	animation-fill-mode: both;
	animation-duration: 1s;
}


 

}
</style>
</head>
<body>
<jsp:include page="includes.jsp" />
<jsp:include page="header.jsp" />
	<div class="container">
		<div class=row>
			<div class='login' style="color:black">
				<h1>Registration</h1>
				<form:form modelAttribute="registrationDetails"
					accept-charset="utf-8" class="form">
					<form:errors path="*" cssClass="errorblock" element="div" />

					<form:input path="name" pattern="[a-zA-Z]{3,30}" required="true"
						class="form-control input-lg" placeholder="Name" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />

					<form:input path="mail_id"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
						class="form-control input-lg" placeholder="Your Email" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('mail_id')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />


					<form:input path="mobile_number" pattern="[9|7|8][0-9]{9}"
						required="true" class="form-control input-lg"
						placeholder="Your Mobile Number" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('mobile_number')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />



					<form:password path="password" id="txtPassword" required="true"
						class="form-control input-lg" placeholder="Password" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />


					<form:password path="confirm_password" id="txtConfirmPassword"
						required="true" class="form-control input-lg"
						placeholder="Confirm Password" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('confirm_password')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />



					<div class="row">
						<div class="col-md-6">
							<button class="btn btn-lg btn-primary btn-block signup-btn"
								name="_eventId_submit" type="submit" id="btnSubmit"
								value="submit" onclick="return Validate()">Register</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>


<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
</html>
