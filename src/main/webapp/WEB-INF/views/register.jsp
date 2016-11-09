<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
 <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>"rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="resources/js/bootbox.min.js"></script>
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

.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
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
				<form:form modelAttribute="registrationDetails" accept-charset="utf-8"
				method="post" class="form" role="form">
					<form:errors path="*" cssClass="errorblock" element="div" /> 
					
					<h4>Name:</h4>
					<form:input path="name" pattern="[a-zA-Z]{3,30}" required="true"
						class="form-control input-lg" placeholder="Name" title="Please enter Alphabets from range 3 to 30" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
					
					<h4>Email:</h4>
					<form:input path="mail_id" id="mailid" name="mailid"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
						class="form-control input-lg" placeholder="Your Email" title="Ex:abc@xyz.com"/>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('mail_id')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />

					<h4>Mobile Number:</h4>	
					<form:input path="mobile_number" pattern="[9|7|8][0-9]{9}"
						required="true" class="form-control input-lg"
						placeholder="Your Mobile Number" title="Please enter 10digit Numeric value start with 9or8or7" />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('mobile_number')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />

					<h4>Password</h4>
					<form:input type="password" id="password" path="password"
					name="password" required="true" class="form-control input-lg"
					placeholder="Password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				
				<h4>Confirm Password</h4>
				<form:input type="password" id="confirmpassword"
					path="confirm_password" name="confirmpassword" required="true"
					class="form-control input-lg" placeholder="ConfirmPassword" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('confirm_password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />





				<div class="row">
					<div class="col-xs-4">

						<button class="btn btn-lg btn-primary btn-block signup-btn"
							name="_eventId_submit" type="submit" value="submit">Register</button>


					</div>
				</div>
				
<script>

/* function emailcheck()
{
	
	 var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	 var mail= document.getElementById("mailid");
	 if (reg.test(mail.value) == false) 
     { alert("f1")
		 mailid.setCustomValidity("Passwords Don't Match");
        alert("f2")
     }
	 else{
		 alert("true")
		 mailid.setCustomValidity("");
	 }
    
     

}
mailid.onchange=emailcheck; */

function validatePassword(){
	 var password = document.getElementById("password")
	 ,confirmpassword = document.getElementById("confirmpassword")
	  
	if(password.value != confirmpassword.value){
		confirmpassword.setCustomValidity("Passwords Don't Match");
	}
	else {
		confirmpassword.setCustomValidity("");
	}
	 
}
 password.onchange=validatePassword;
 confirmpassword.onkeyup=validatePassword;	
</script>
			</form:form>
			</div>
		</div>
	</div>
</body>

</html>
