<%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
</head>
<body>
	<h1>Registers Form</h1>
	<form:form action="register.do" method="POST" commandName="register">
		<table>
			<tr>
				<td>Register ID</td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td>Register First name</td>
				<td><form:input path="firstname" placeholder="First Name" /></td>
			</tr>
			<tr>
				<td>Register Last Name</td>
				<td><form:input path="lastname" placeholder="Last name"/></td>
			</tr>
			<tr>
				<td>Register mail id</td>
				<td><form:input path="mailid" placeholder="Mail Id"/></td>
			</tr>
			<tr>
				<td>Register mobile</td>
				<td><form:input path="mobile" placeholder="Mobile"/></td>
			</tr>
			<tr>
				<td>Register user name</td>
				<td><form:input path="username" placeholder="UserName" /></td>
			</tr>
			<tr>
				<td>Register password</td>
				<td><form:input path="password" placeholder="password"/></td>
			</tr>
			<tr>
				<td>Register re-password</td>
				<td><form:input path="repassword" placeholder="RePassword" /></td>
			</tr>
			<tr>
				<td>Register address</td>
				<td><form:input path="address" placeholder="address" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="action" value="Register" />
					
			</tr>
		</table>
		
	</form:form>

	

</body>

</html>