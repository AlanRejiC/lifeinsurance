<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
<%@ include file="/WEB-INF/styles/style.css"%>
</style>
<title>Insurance Form page</title>
</head>
<body>
	<div align="center">
		<form:form modelAttribute="insurance" method="POST"
			action="/getPaymentPage">
			<center><h1>Insurance Application Form</h1></center>
			<table>
			<tr>
			<td>
				<table>
						<h3>Personal Details Section</h3>
					<tr>
						<td>Name</td>
						<td><form:input path="custName" name="custName"></form:input></td>
						<td><form:errors path="custName"></form:errors></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td><form:select path="custGender" id="custGender"
								items="${genderList}" /></td>
						<td><form:errors path="custGender"></form:errors></td>
					</tr>
					<tr>
						<td>Date of Birth</td>
						<td><form:input path="custDob" type="text" name="custDob" /></td>
						<td><form:errors path="custDob" /></td>
					</tr>
					<tr>
						<td>Relationship</td>
						<td><form:select path="custRelationship"
								id="custRelationship" items="${relationshipList}" /></td>
						<td><form:errors path="custRelationship"></form:errors></td>
					</tr>
				</table>
				<table>
						<h3>Residence History</h3>
					<tr>
						<td>Residence Date</td>
						<td><form:input path="custResidenceDate" type="text"
								name="custResidenceDate" /></td>
						<td><form:errors path="custResidenceDate"></form:errors></td>
					</tr>
					<tr>
						<td>Village</td>
						<td><form:input path="custVillage" type="text"
								name="custVillage" /></td>
						<td><form:errors path="custVillage"></form:errors></td>
					</tr>
					<tr>
						<td>Block</td>
						<td><form:input path="custBlock" type="text" name="custBlock" /></td>
						<td><form:errors path="custBlock"></form:errors></td>
					</tr>
					<tr>
						<td>District</td>
						<td><form:input path="custDistrict" type="text"
								name="custDistrict" /></td>
						<td><form:errors path="custDistrict"></form:errors></td>
					</tr>
					<tr>
						<td>State</td>
						<td><form:input path="custState" type="text" name="custState" /></td>
						<td><form:errors path="custState"></form:errors></td>
					</tr>
					<tr>
						<td>PinCode</td>
						<td><form:input path="custPin" type="text" name="custPin" /></td>
						<td><form:errors path="custPin"></form:errors></td>
					</tr>
				</table>
				</td>
				<td></td>
				<td>
				<table>
						<h3>Occupation History</h3>
					<tr>
						<td>Occupation</td>
						<td><form:input path="custOccupation" type="text"
								name="custOccupation" /></td>
						<td><form:errors path="custOccupation"></form:errors></td>
					</tr>
					<tr>
						<td>Industry</td>
						<td><form:input path="custIndustry" type="text"
								name="custIndustry" /></td>
						<td><form:errors path="custIndustry"></form:errors></td>
					</tr>
					<tr>
						<td>Salary</td>
						<td><form:input path="custSalary" type="text"
								name="custSalary" /></td>
						<td><form:errors path="custSalary"></form:errors></td>
					</tr>
				</table>
				<table>
						<h3>Medical History</h3>
					<tr>
						<td>Diagnosis Date</td>
						<td><form:input path="diagnosisDate" type="text"
								name="diagnosisDate" /></td>
						<td><form:errors path="diagnosisDate" /></td>
					</tr>
					<tr>
						<td>Disease (ICD code)</td>
						<td><form:input path="diseaseCode" type="text"
								name="diseaseCode" /></td>
						<td><form:errors path="diseaseCode"></form:errors></td>
					</tr>
				</table>
				<table>
						<h3>Policy selection</h3>
					<tr>
						<td>Policy Name</td>
						<td><form:input path="policyName" type="text"
								name="policyName" /></td>
						<td><form:errors path="policyName" /></td>
					</tr>
					<tr>
						<td>Policy Mature Date</td>
						<td><form:input path="matureDate" type="text"
								name="matureDate" /></td>
						<td><form:errors path="matureDate" /></td>
					</tr>
				</table>
				</td>
				</tr>
			</table>
			<input type="submit" value="Payment"/>
		</form:form>
	</div>
</body>
</html>