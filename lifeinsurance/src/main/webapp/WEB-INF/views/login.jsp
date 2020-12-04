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
		<form:form action="login.jsp" method="post" modelAttribute="">
			<table >
				<tr>
					<td>Enter User ID</td>
					<td><input type="text" name="userId" /></td>
				</tr>
				<tr>
					<td>Enter Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
			</table>
            <br>
            <input type="submit" value="Submit"/><br>
             <footer><a href="admin.jsp">Admin Page</a></footer>
		</form:form>
	</div>
</body>
</html>