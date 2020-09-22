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
        <c:when test="${mode == 'COMPANY_VIEW'}">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>informationName</th>
                    <th>informationType</th>
                    <th>information1</th>
                    <th>information2</th>
                    <th>information3</th>
                    <th>information4</th>
                    <th>information5</th>
                    <th>information6</th>
                    <th>information7</th>
                    <th>information8</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="houseImages" items="${infoAboutCompany}">
                    <tr>
                        <td>${houseImages.id}</td>
                        <td>${houseImages.informationName}</td>
                        <td>${houseImages.informationType}</td>
                        <td>${houseImages.information1}</td>
                        <td>${houseImages.information2}</td>
                        <td>${houseImages.information3}</td>
                        <td>${houseImages.information4}</td>
                        <td>${houseImages.information5}</td>
                        <td>${houseImages.information6}</td>
                        <td>${houseImages.information7}</td>
                        <td>${houseImages.information8}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:when>
    </c:choose>
</div>
</body>
</html>