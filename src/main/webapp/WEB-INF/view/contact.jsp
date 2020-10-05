<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Company information</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+SC:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">

    <c:choose>
        <c:when test="${mode == 'CONTACT_VIEW'}">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>firstName</th>
                    <th>lastName</th>
                    <th>email</th>
                    <th>postCode</th>
                    <th>address</th>
                    <th>city</th>
                    <th>country</th>
                    <th>phoneNumber</th>
                    <th>whatAreYouInterestedIn</th>
                    <th>yourDateForConsultation</th>
                    <th>others</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="companyInfo" items="${contactInfo}">
                    <tr>
                        <td>${companyInfo.id}</td>
                        <td>${companyInfo.firstName}</td>
                        <td>${companyInfo.lastName}</td>
                        <td>${companyInfo.email}</td>
                        <td>${companyInfo.postCode}</td>
                        <td>${companyInfo.address}</td>
                        <td>${companyInfo.city}</td>
                        <td>${companyInfo.country}</td>
                        <td>${companyInfo.phoneNumber}</td>
                        <td>${companyInfo.whatAreYouInterestedIn}</td>
                        <td>${companyInfo.yourMessage}</td>
                        <td>${companyInfo.yourDateForConsultation}</td>
                        <td>${companyInfo.others}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:when>
    </c:choose>
</div>
</body>
</html>