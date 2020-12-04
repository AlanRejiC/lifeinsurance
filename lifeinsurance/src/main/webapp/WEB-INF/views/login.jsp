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
<title>User Login Page</title>
</head>
<body>
	<div align="center">
		<h1>User Login Form</h1>
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
			<input type="submit" value="Submit" />
			<footer>
				<a href="admin.jsp">Admin Page</a>
			</footer>
		</form:form>
	</div>
</body>
</html>