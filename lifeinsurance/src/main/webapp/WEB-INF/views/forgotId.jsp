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
<form:form action="/forgotUserId" method="POST" name="userRegister"
			modelAttribute="user">
			<table>


				<form:hidden path="contact" />
				<form:hidden path="email" />
				<tr>
				<td>${Question1}</td>
				</tr>
				<tr>
				<td><form:errors path="security1"></form:errors></td>
				<tr>
				<tr>
					<td>Enter the answer</td>
					<td><form:input path="ans1" /></td>
					<td><form:errors path="ans1" /></td>
				</tr>
				
				</tr>
				<td>${Question2}</td>
				</tr>
				<tr>
				<td><form:errors path="security2"></form:errors></td>
				</tr>
				<tr>
					<td>Enter the answer</td>
					<td><form:input path="ans2" /></td>
					<td><form:errors path="ans2" /></td>
				</tr>
				
				<tr>
				<td>${Question3}</td>
				</tr>
				<tr>
				<td><form:errors path="security3"></form:errors></td>
				</tr>
				<tr>
					<td>Enter the answer</td>
					<td><form:input path="ans3"  /></td>
					<td><form:errors path="ans3" /></td>
				</tr>
				
			</table>
			<div>
				<input type="submit" value="Submit" style="background-color: green" />
			</div>
			<h2>${id}</h2>
		</form:form>
</body>
</html>