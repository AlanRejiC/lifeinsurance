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
           <h1>Policies</h1>
           <br>
           <br>
           <br>
           <br>
           <table>
               <tr id="head">
                   <td><label for="policyNumber"><b>Policy Number</b></label></td>
                   <td></td>
                   <td><label for="policyName"><b>Policy Name</b></label></td>
                   <td><label for="policyDescription"><b>Description</b></label></td>
                   <td><label for="netAmountPerYear"><b>Net Amount Per Year</b></label></td>
                   <td><label for="tot_deductable"><b>Total deductible</b></label></td>
                   <td><label for="totCoInsurance"><b>Total Co Insurance</b></label></td>
               	   <td><label for="interestRate"><b>Interest Rate</b></label>
               	   <td><label for="edit"><b>Action</b></label></td>
               </tr>
               
            	<c:forEach var="item" items="${policyList}">
            	<tr>
            	<td>${item.policyNumber}</td>
            	<td>${item.policyName}</td>
            	<td>${item.policyDescription}</td>
            	<td>${item.netAmountPerYear}</td>
            	<td>${item.tot_deductable}</td>
            	<td>${item.totCoInsurance}</td>
            	<td>${item.interestRate}</td>
            	<td><a href="/policyEdit?policyNumber=${item.policyNumber}">Edit/Delete</a></td>
            	</tr>
            	</c:forEach>
            	
           </table>
</body>
</html>