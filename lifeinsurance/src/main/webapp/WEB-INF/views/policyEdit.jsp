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
           <div class="header">

           </div>
           <center>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <h1>Edit Policy</h1>
            <form:form modelAttribute="policy" method="GET" action="/getPolicySave">
				<table>
                <tr>
                <td><label for="policyNumber"><b>Policy Number</b></label></td>
                   <td><label for="policyName"><b>Policy Name</b></label></td>
                   <td><label for="policyDescription"><b>Description</b></label></td>
                   <td><label for="policyTerm"><b>Policy Term</b></label></td>
                   <td><label for="netAmountPerYear"><b>Net Amount Per Year</b></label></td>
                   <td><label for="totDeductible"><b>Total Deductible</b></label></td>
                   <td><label for="totCoInsurance"><b>Total Co-Insurance</b></label></td>
               	   <td><label for="interestRate"><b>Interest Rate</b></label><td>
                    </tr>

                    <tr>
                    <td><form:input path="policyNumber" type="text" value="${item.policyNumber}" /></td>
                    <td><form:input path="policyName" type="text" value="${item.policyName}" /></td>
                    <td><form:input path="policyDescription" type="text" value="${item.policyDescription}" /></td>
                    <td><form:input path="policyTerm" type="text" value="${item.policyTerm}" /></td>
                    <td><form:input path="netAmountPerYear" type="text" value="${item.netAmountPerYear}" /></td>
                    <td><form:input path="totDeductible" type="text" value="${item.totDeductible}" /></td>
                    <td><form:input path="totCoInsurance" type="text" value="${item.totCoInsurance}" /></td>
                     <td><form:input path="interestRate" type="text" value="${item.interestRate}" /></td>
					</tr>    
					<tr>    
					<td/>
					<td/>
					<td/>          
                    <td><input type="submit" value="Save"></td>
                    </tr>
                    </form:form>
                </table>
</center>
        </body>
    </html>