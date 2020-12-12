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
<form:form action="/setQuestion" method="POST" 
			modelAttribute="questionnaire">
			<table>

				<tr>
				<td>Enter the first Question</td>
				</tr>
				<tr>
					
					<td><form:input path="question1" /></td>
					<td><form:errors path="question1" /></td>
				</tr>
				
				<tr>
				<td>Enter the Second Question</td>
				</tr>

				<tr>
					
					<td><form:input path="question2" /></td>
					<td><form:errors path="question2" /></td>
				</tr>
				
				<tr>
				<td>Enter the Third Question</td>
				</tr>
				<tr>
					
					<td><form:input path="question3"  /></td>
					<td><form:errors path="question3" /></td>
				</tr>
				
			</table>
			<div>
				<input type="submit" value="Submit" style="background-color: green" />
			</div>
			<h2>${status}</h2>
		</form:form>
</body>
</html>