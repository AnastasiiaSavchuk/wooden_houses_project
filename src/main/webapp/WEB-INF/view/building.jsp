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
        <c:when test="${mode == 'BUILDING_VIEW'}">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>name</th>
                    <th>description1</th>
                    <th>description2</th>
                    <th>description3</th>
                    <th>description4</th>
                    <th>description5</th>
                    <th>description6</th>
                    <th>description7</th>
                    <th>description8</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="houseConstructionInfo" items="${houseConstructionInfo}">
                    <tr>
                        <td>${houseConstructionInfo.id}</td>
                        <td>${houseConstructionInfo.name}</td>
                        <td>${houseConstructionInfo.description1}</td>
                        <td>${houseConstructionInfo.description2}</td>
                        <td>${houseConstructionInfo.description3}</td>
                        <td>${houseConstructionInfo.description4}</td>
                        <td>${houseConstructionInfo.description5}</td>
                        <td>${houseConstructionInfo.description6}</td>
                        <td>${houseConstructionInfo.description7}</td>
                        <td>${houseConstructionInfo.description8}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:when>
    </c:choose>
</div>
</body>
</html>