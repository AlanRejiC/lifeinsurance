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
<form:form action="/verification" method="Post" name="userRegister"
			modelAttribute="user">
			<table>

			
					<tr><td>Enter User ID</td></tr>
					<tr><td><form:input path="userId" 
							placeholder="User ID" /></td><tr>
				</tr>
				<tr>
					<tr><td>Enter Password</td></tr>
					<tr><td><form:input path="password" name="password"
							placeholder="password" text="password" /></td></tr>
				<tr><td><input type="submit" value="Proceed"></td></tr>
				
				
				
</table>
<h2>${status}</h2>
</form:form>
</body>
</html>