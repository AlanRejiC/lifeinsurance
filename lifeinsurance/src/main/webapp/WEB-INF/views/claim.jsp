<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
<%@include file="/WEB-INF/styles/style.css"%>
</style>

<head>
<meta charset="ISO-8859-1">
<title>Insurance Claim Submission</title>
</head>
<body style="background-color: lavender">
	<div>${success}</div>
	<div align="center">
		<h1>Insurance Claim Submission Form</h1>
		<form:form action="/getClaimPage" method="POST" name="userRegister"
			modelAttribute="claim">
			<table style="width: 80%">
				<tr>
					<td>Old claim number</td>
					<td><form:input path="claimNumber" type="text"
							name="claimNumber" /></td>
					<td><form:errors path="claimNumber" /></td>
				</tr>
				<tr>
					<td>Incurred date</td>
					<td><form:input path="incurredDate" type="text"
							name="incurredDate" /></td>
					<td><form:errors path="incurredDate" /></td>
				</tr>
				<tr>
					<td>Reported date</td>
					<td><form:input path="reportedDate" type="text"
							name="reportedDate" /></td>
					<td><form:errors path="reportedDate" /></td>
				</tr>
				<tr>
					<td>Date of claim paid</td>
					<td><form:input path="datePaid" type="text" name="datePaid" /></td>
					<td><form:errors path="datePaid" /></td>
				</tr>
				<tr>
					<td>Date of admission</td>
					<td><form:select path="admitDate" type="text" name="admitDate" /></td>
					<td><form:errors path="admitDate"></form:errors></td>
				</tr>
				<tr>
					<td>Date of discharge</td>
					<td><form:input path="releaseDate" type="text"
							name="releaseDate" /></td>
					<td><form:errors path="releaseDate" /></td>
				</tr>
				<tr>
					<td>Claim Status</td>
					<td><form:input path="status" name="status" /></td>
					<td><form:errors path="status" /></td>
				</tr>
				<tr>
					<td>Total Charges</td>
					<td><form:input path="totalCharge" name="totalCharge" /></td>
					<td><form:errors path="totalCharge" /></td>
				</tr>





				<tr>
					<td>Total deductible paid</td>
					<!--<td><form:input path="totalCharge"  name="totalCharge" /></td>
					<td><form:errors path="totalCharge" /></td>-->
				</tr>
				<tr>
					<td>Total co-insurance amount</td>
					<!--<td><form:input path="totalCharge"  name="totalCharge" /></td>
					<td><form:errors path="totalCharge" /></td>-->
				</tr>
				<tr>
					<td>Total excluded amount</td>
					<!--<td><form:input path="totalCharge"  name="totalCharge" /></td>
					<td><form:errors path="totalCharge" /></td>-->
				</tr>
				<tr>
					<td>Total benefit paid</td>
					<!--<td><form:input path="totalCharge"  name="totalCharge" /></td>
					<td><form:errors path="totalCharge" /></td>-->
				</tr>





				<tr>
					<td>Total pre-hospital charges</td>
					<td><form:input path="preCharge" name="preCharge" /></td>
					<td><form:errors path="preCharge" /></td>
				</tr>
				<tr>
					<td>Total post-hospital charges</td>
					<td><form:input path="postCharge" name="postCharge" /></td>
					<td><form:errors path="postCharge" /></td>
				</tr>
			</table>
			<input type="submit" value="Submit" style="background-color: green" />

		</form:form>


	</div>
</body>
</html>