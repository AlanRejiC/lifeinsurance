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
<title>Agent View Page</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
<div align="center">
	<form:form modelAttribute="user" action="/getAgentDetails" method="POST">
		<h3>Agent View Page</h3>
		<table>
		<tr>
				<td>Agent ID</td>
				<td><form:input path="userId" name="userId"
						value="${item.userId}"/></td>
				<td><form:errors path="userId" /></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><form:input path="firstName" name="firstName" value="${item.firstName}"></form:input></td>
				<td><form:errors path="firstName"></form:errors></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="email" name="email"
						value="${item.email}"  /></td>
				<td><form:errors path="email" /></td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td><form:input path="contact" type="text" name="contact"
						value="${item.contact}" /></td>
				<td><form:errors path="contact" /></td>
			</tr>
			
			
		</table>
		<input type="submit" value="Return to Agent Details" id="submitbutton"/>
	</form:form>
</div>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</body>
</html>