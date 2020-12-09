<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	<%@ include file="/WEB-INF/styles/style.css"%>
</style>
<title>Become an agent</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
<div align="center">
	<form:form modelAttribute="user" action="/getAgentPage" method="POST">
		<h3>Become an Agent</h3>
		<table>
			<tr>
				<td>Name</td>
				<td><form:input path="firstName" name="firstName"></form:input></td>
				<td><form:errors path="firstName"></form:errors></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="email" name="email"
						placeholder="ID@Domain" /></td>
				<td><form:errors path="email" /></td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td><form:input path="contact" type="text" name="contact"
						placeholder="Contact No" /></td>
				<td><form:errors path="contact" /></td>
			</tr>
			<tr>
				<td>Agent ID</td>
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
		<input type="submit" value="Submit" id="submitbutton"/>
	</form:form>
</div>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</body>
</html>