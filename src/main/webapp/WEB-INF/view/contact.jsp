<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Company information</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
                <c:forEach var="house" items="${contactInfo}">
                    <tr>
                        <td>${house.id}</td>
                        <td>${house.firstName}</td>
                        <td>${house.lastName}</td>
                        <td>${house.email}</td>
                        <td>${house.postCode}</td>
                        <td>${house.address}</td>
                        <td>${house.city}</td>
                        <td>${house.country}</td>
                        <td>${house.phoneNumber}</td>
                        <td>${house.whatAreYouInterestedIn}</td>
                        <td>${house.yourMessage}</td>
                        <td>${house.yourDateForConsultation}</td>
                        <td>${house.others}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:when>
    </c:choose>
</div>
</body>
</html>