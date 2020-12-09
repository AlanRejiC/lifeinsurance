<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<h1>Users</h1>
	<br>
	<br>
	<br>
	<br>
	<a href="/download/users.xlsx">import</a>
	<form:form action="/getSearch" modelAttribute="search" method="POST">
	<form:input path="name"/>
	<input type="submit" value="Search"/>
	</form:form>
	<table>

		<tr id="head">
			<td><label for="userId"><b>User Id</b></label></td>
			<td><label for="firstName"><b>First Name</b></label></td>
			<td><label for="lastName"><b>Last Name</b></label></td>
			<td><label for="gender"><b>Gender</b></label></td>
			<td><label for="dob"><b>Date of Birth</b></label></td>
			<td><label for="contact"><b>Contact Number</b></label></td>
			<td><label for="email"><b>Email Id</b></label>
			<td><label for="role"><b>Role</b></label></td>
			<td><a href="getUserPage?role=customer">Customer</a></td>
			<td><a href="getUserPage?role=agent">Agent</a></td>
			<td><a href="getUserPage?role=admin">Admin</a></td>
		</tr>

		<c:forEach var="user" items="${user}">
			<tr>
				<td>${user.userId}</td>
				<td>${user.firstName}</td>
				<td>${user.lastName}</td>
				<td>${user.gender}</td>
				<td>${user.dob}</td>
				<td>${user.contact}</td>
				<td>${user.email}</td>
				<td>${user.role}</td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="/userEdit?userId=${user.userId}">Edit</a></td>
				<td><a href="/userUpdate?userId=${user.userId}">Update
						Claim Status</a></td>
				<td><a href="/userDelete?userId=${user.userId}">Delete</a></td>

			</tr>
		</c:forEach>

	</table>
</body>
</html>