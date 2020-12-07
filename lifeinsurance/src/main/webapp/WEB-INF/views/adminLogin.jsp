<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
<%@ include file="/WEB-INF/styles/style.css"%>
</style>

<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<div align="center">
		<center><h2>Admin Login Page</h2></center>
		<form:form action="/getAdminLoginPage" method="post" modelAttribute="user">
			<table>
				<tr>
					<td>Enter Admin ID:</td>
					<td><form:input path="userId" name="userId" /></td>
					<td><form:errors path="userId"></form:errors></td>
				</tr>
				<tr>
					<td>Enter Password:</td>
					<td><form:input path="password" 
							name="password" /></td>
					<td><form:errors path="password"></form:errors></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="Submit" id="submitbutton"/>
			<h3>${invalid}</h3>
			<h3>${invalidRole}</h3>
		</form:form>
	</div>
</body>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</html>