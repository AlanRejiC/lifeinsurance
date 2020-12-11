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
<title>User Login Page</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	<div align="center">
		<center><h2>User Login Page</h2></center>
		<form:form action="/getLoginPage" method="post" modelAttribute="user">
			<table>
			
				<tr>
					<td>Enter User ID:</td>
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
				<h3><a id="adminlink" href="/getAdminLoginPage" >Click here for Admin login</a></h3>
				<h3><a id="adminlink" href="/getSignUpPage" >Sign Up</a></h3>
				h3><a id="adminlink" href="/forgotEnter">Forgot Id</a>
		</form:form>
	</div>
</body>
<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>
</html>