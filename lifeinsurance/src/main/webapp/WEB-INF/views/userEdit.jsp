<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>

</head>
<body>
	<div class="header"></div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1>Edit Menu Item</h1>
	<form:form modelAttribute="user" method="GET" action="/userSuccess">
		<table>


			<tr id="head">
				<th><label for="userId"><b>User Id</b></label></th>
				<th><label for="firstName"><b>First Name</b></label></th>
				<th><label for="lastName"><b>Last Name</b></label></th>
				<th><label for="gender"><b>Gender</b></label></th>
				<th><label for="dob"><b>Date of Birth</b></label></th>
				<th><label for="contact"><b>Contact Number</b></label></th>
				<th><label for="contact"><b>Password</b></label></th>
				<th><label for="contact"><b>Confirm Password</b></label></th>
				<th><label for="email"><b>Email Id</b></label></th>
				<th><label for="security1"><b>Security question 1</b></label></th>
				<th><label for="ans_1"><b>Answer 1</b></label></th>
				<th><label for="security2"><b>Security question 2</b></label></th>
				<th><label for="ans_2"><b>Answer 1</b></label></th>
				<th><label for="security3"><b>Security question 3</b></label></th>
				<th><label for="ans_3"><b>Answer 1</b></label></th>
				<th><label for="role"><b>Role</b></label></th>
			</tr>

			<tr>
				<form:input path="userId" type="text" value="${item.userId}" />
				<form:input path="firstName" type="text" value="${item.firstName}" />
				<form:input path="lastName" type="text" value="${item.lastName}" />
				<form:input path="gender" type="text" value="${item.gender}" />
				<form:input path="dob" type="text" value="${item.dob}" />
				<form:input path="contact" type="text" value="${item.contact}" />
				
				<form:input path="password" type="password" value="${item.password}" />
				<form:input path="confirmpassword" type="password" value="${item.confirmpassword}" />
				
				<form:input path="email" type="text" value="${item.email}" />
				<form:input path="security1" type="text" value="${item.security1}" />
				<form:input path="ans1" type="text" value="${item.ans1}" />
				<form:input path="security2" type="text" value="${item.security2}" />
				<form:input path="ans2" type="text" value="${item.ans2}" />
				<form:input path="security3" type="text" value="${item.security3}" />
				<form:input path="ans3" type="text" value="${item.ans3}" />
				<form:input path="role" type="text" value="${item.role}" />
			</tr>
			<tr>
				<td><input type="submit" value="Save"></td>
			</tr>
		</table>
	</form:form>


</body>
</html>