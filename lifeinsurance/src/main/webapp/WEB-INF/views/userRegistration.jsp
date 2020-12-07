<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<style>
<%@ include file ="/WEB-INF/styles/style.css"%>
</style>

<head>
<meta charset="ISO-8859-1">
<title>New User Registration Page</title>
</head>
<body>
	<header class="header">
<center><h1>Life Insurance Management private Limited</h1></center>
  

</header>
	<div align="center">
	<h2>New User Registration</h2>
	<h3>Personal Details</h3>
	<form:form action="/getSignUpPage" method="POST" name="userRegister"
		modelAttribute="user">
		<table>
			<tr>
				<td>First Name</td>
				<td><form:input path="firstName" name="firstName"
						placeholder='First Name' /></td>
				<td><form:errors path="firstName" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><form:input path="lastName" name="lastName"
						placeholder="Last Name" /></td>
				<td><form:errors path="lastName" /></td>
			</tr>
			<tr>
				<td>DoB</td>
				<td><form:input path="dob" type="text" name="dob"
						placeholder="yyyy-mm-dd" /></td>
				<td><form:errors path="dob" /></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><form:select path="gender" id="gender"
						items="${genderList}" /></td>
				<td><form:errors path="gender"></form:errors></td>
			</tr>
			<tr>
				<td>Contact</td>
				<td><form:input path="contact" type="text" name="contact"
						placeholder="Contact" /></td>
				<td><form:errors path="contact" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="email" name="email"
						placeholder="ID@Domain" /></td>
				<td><form:errors path="email" /></td>
			</tr>
			<tr>
				<td>User ID</td>
				<td><form:input path="userId" name="userId"
						placeholder="User ID" /></td>
				<td><form:errors path="userId" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input path="password" type="password" name="password"
						placeholder="Password" /></td>
				<td><form:errors path="password" /></td>
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td><form:input path="confirmpassword" type="password"
						name="confirmpassword" placceholder="Confirm Password" /></td>
				<td><form:errors path="confirmpassword" /></td>
			</tr>
		</table>
		<div>
			<input type="submit" value="Submit" style="background-color: green" />
		</div>
	</form:form>

	</div>

	<footer class="footer">
		<p>
			Life Insurance copyrights 2020<br> Locations <br> Connect
			with us <br>
		</p>
	</footer>
</body>
</html>