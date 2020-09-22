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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div style="margin: 15px; font-size: 14px; color: green;" class="navbar-header">Spring MVC -Logos</div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/frontend/houses">All Houses</a></li>
        </ul>
    </div>
</nav>

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
                <c:forEach var="houseImages" items="${contactInfo}">
                    <tr>
                        <td>${houseImages.id}</td>
                        <td>${houseImages.firstName}</td>
                        <td>${houseImages.lastName}</td>
                        <td>${houseImages.email}</td>
                        <td>${houseImages.postCode}</td>
                        <td>${houseImages.address}</td>
                        <td>${houseImages.city}</td>
                        <td>${houseImages.country}</td>
                        <td>${houseImages.phoneNumber}</td>
                        <td>${houseImages.whatAreYouInterestedIn}</td>
                        <td>${houseImages.yourMessage}</td>
                        <td>${houseImages.yourDateForConsultation}</td>
                        <td>${houseImages.others}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:when>
    </c:choose>
</div>
</body>
</html>