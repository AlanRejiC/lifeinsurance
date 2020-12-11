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
<title>Insert title here</title>
</head>
<body>
<form:form action="/forgotEnter" method="GET" name="userRegister"
			modelAttribute="user">
			<table>

			

					<tr><td>Enter Contact</td></tr>
					<tr><td><form:input path="contact" 
							placeholder="Contact" /></td><tr>
				</tr>
				<tr><td><h1>OR</h1></td></tr>
				<tr>
					<tr><td>Enter Email</td></tr>
					<tr><td><form:input path="email" name="email"
							placeholder="ID@Domain" /></td></tr>
				<input type="submit" value="Proceed">
				<h2>${status}</h2>
				</tr>
				</form:form>
</table>
</body>
</html>