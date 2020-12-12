<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	<%@ include file="/WEB-INF/styles/style.css"%>
</style>
<title>FeedBackForm</title>
</head>
<body>
<header class="header">
	<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
<center><h2>FeedBack Form</h2></center>
	<div align="center">
		<form:form modelAttribute="questionnaire" method="POST" action="/getFeedBackPage">
			<table>
				<tr>
					<td>Enter User ID</td>
					<td><form:input path="userId" type="text" name="userId" /></td>
					<td><form:errors path="userId" /></td>
				</tr>
				
				<tr>
					<td>Description</td>
					<td><form:textarea path="feedback" rows="10" column="50" name="description" placeholder='Enter your Review or Feedback' /></td>
				</tr>
				
			</table>
			<br>
			<input type="submit" value="Submit FeedBack" id="submitbutton"/>
			<br>
			<br>
			<h2><div>${success}</div></h2>
			
		</form:form>
	</div>
	<footer class="footer">
  <p>Life Insurance copyrights 2020<br>
  Locations <br> Connect with us <br></p>
</footer>	

</body>
</html>