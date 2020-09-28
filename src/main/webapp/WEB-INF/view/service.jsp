<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Dream house</title>
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

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div style="margin: 15px; font-size: 14px; color: green;" class="navbar-header">Spring MVC -Logos</div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/frontend/house">All Houses</a></li>
        </ul>
    </div>
</nav>

<div class="container">

    <c:choose>
        <c:when test="${mode == 'SERVICE_VIEW'}">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>name</th>
                    <th>description</th>
                    <th>part1</th>
                    <th>part2</th>
                    <th>part3</th>
                    <th>part4</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="house" items="${houseService}">
                <tr>
                    <td>${house.id}</td>
                    <td>${house.name}</td>
                    <td>${house.description}</td>
                    <td>${house.part1}</td>
                    <td>${house.part2}</td>
                    <td>${house.part3}</td>
                    <td>${house.part4}</td>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>
    </c:choose>
</div>
</body>
</html>