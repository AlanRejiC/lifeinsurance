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
<title>Insurance Claim Re-Submission</title>
</head>
<body>
<header class="header">
<center><h1 id="home_heading">Life Insurance Management private Limited</h1></center>
</header>
	
	<div align="center">
		<h1>Insurance Claim Re-Submission Form</h1>
		<h2>Please Re-Submit your Claim as your previous submission has been Rejected.</h2>
		<form:form action="/getClaimEdit" method="POST" name="userResubmit"
			modelAttribute="claim">
			<table>
				<tr>
					<td>Old claim number</td>
					<td><form:input path="claimNumber" type="text"
							name="claimNumber" value="${item.claimNumber}" /></td>
					<td><form:errors path="claimNumber" /></td>
				</tr>
				<tr>
					<td>Customer Name</td>
					<td><form:input path="custName" type="text"
							name="custName" value="${item.custName}"  /></td>
					<td><form:errors path="custName" /></td>
				</tr>
				<tr>
					<td>Incurred date</td>
					<td><form:input path="incurredDate" type="text"
							name="incurredDate" value="${item.incurredDate}"  /></td>
					<td><form:errors path="incurredDate" /></td>
				</tr>
				<tr>
					<td>Reported date</td>
					<td><form:input path="reportedDate" type="text"
							name="reportedDate" value="${item.reportedDate}"  /></td>
					<td><form:errors path="reportedDate" /></td>
				</tr>
				<tr>
					<td>Date of claim paid</td>
					<td><form:input path="datePaid" type="text" name="datePaid" value="${item.datePaid}" /></td>
					<td><form:errors path="datePaid" /></td>
				</tr>
				<tr>
					<td>Date of admission</td>
					<td><form:input path="admitDate" type="text" name="admitDate" value="${item.admitDate}"  /></td>
					<td><form:errors path="admitDate"></form:errors></td>
				</tr>
				<tr>
					<td>Date of discharge</td>
					<td><form:input path="releaseDate" type="text"
							name="releaseDate"  value="${item.releaseDate}"/></td>
					<td><form:errors path="releaseDate" /></td>
				</tr>
				<tr>
					<td>Total Charges</td>
					<td><form:input path="totalCharge" name="totalCharge" value="${item.totalCharge}" /></td>
					<td><form:errors path="totalCharge" /></td>
				</tr>


				<tr>
					<td>Total pre-hospital charges</td>
					<td><form:input path="preCharge" name="preCharge" value="${item.preCharge}" /></td>
					<td><form:errors path="preCharge" /></td>
				</tr>
				<tr>
					<td>Total post-hospital charges</td>
					<td><form:input path="postCharge" name="postCharge" value="${item.postCharge}"  /></td>
					<td><form:errors path="postCharge" /></td>
				</tr>


				<tr>
					<td>Total deductible paid</td>
					<td>${totDeductible}</td>
				</tr>
				<tr>
					<td>Total co-insurance amount</td>
					<td>${totCoInsurance}</td>
				</tr>
				<tr>
					<td>Total excluded amount</td>
					<td>${totExcludedAmt}</td>
				</tr>
				<tr>
					<td>Total exceeded amount</td>
					<td>${totExceededAmt}</td>
				</tr>
				<tr>
					<td>Total benefit paid</td>
					<td>${totBenefit}</td>
				</tr>
				
				<center>
<td><label for="img">Choose image</label></td>
            <td><input type="file" id="img" name="img" accept="image/* " onchange="loadFile(event)"></td>
               </tr>
            <tr> <td>Uploaded Image  </td>
                <td><img id="output" width="200" height="100" /></td></tr>
            <tr>
           
            
        <h2><div id="Result"></div></h2>
        </center>
            <script>
                    var loadFile = function(event) {
                        var image = document.getElementById('output');
                        image.src = URL.createObjectURL(event.target.files[0]);
                    };
                var x = 0;
                var array = Array();

                function add_element_to_array()
                {
                     //array[x] = document.getElementById("artid").value;
                    // alert("Element: " + array[x] + " Added at index " + x);
                    document.getElementById("Result").innerHTML="File Uploaded Successfully";
                     //x++;
                     //document.getElementById("artid").value = "";
                }

            </script>


			</table>
			<input type="submit" value="Submit" style="background-color: green" />
			<h2><div>${success}</div></h2>
		</form:form>
<center>
<h4><a href="/getHomePage">Go to Home Page</a></h4>
</center>
	</div>
	<footer class="footer">
		<p>
			Life Insurance copyrights 2020<br> Locations <br> Connect
			with us <br>
		</p>
	</footer>
</body>
</html>
				
