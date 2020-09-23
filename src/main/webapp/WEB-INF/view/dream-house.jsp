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
        <c:when test="${mode == 'HOUSE_VIEW'}">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>House</th>
                    <th>Type</th>
                    <th>Info</th>
                    <th>Story1</th>
                    <th>Story2</th>
                    <th>Story3</th>
                    <th>Story4</th>
                    <th>Story5</th>
                    <th>Story6</th>
                    <th>Story7</th>
                    <th>dimensions</th>
                    <th>houseFootprint</th>
                    <th>totalGrossExternalArea</th>
                    <th>roofPitch</th>
                    <th>feature1</th>
                    <th>feature2</th>
                    <th>purpose</th>
                    <th>purposeInfo1</th>
                    <th>purposeInfo2</th>
                    <th>purposeInfo3</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="houseService" items="${house}">
                    <tr>
                        <td>${houseService.id}</td>
                        <td>${houseService.house}</td>
                        <td>${houseService.type}</td>
                        <td>${houseService.info}</td>
                        <td>${houseService.story1}</td>
                        <td>${houseService.story2}</td>
                        <td>${houseService.story3}</td>
                        <td>${houseService.story4}</td>
                        <td>${houseService.story5}</td>
                        <td>${houseService.story6}</td>
                        <td>${houseService.story7}</td>
                        <td>${houseService.story8}</td>
                        <td>${houseService.dimensions}</td>
                        <td>${houseService.houseFootprint}</td>
                        <td>${houseService.totalGrossExternalArea}</td>
                        <td>${houseService.roofPitch}</td>
                        <td>${houseService.feature1}</td>
                        <td>${houseService.feature2}</td>
                        <td>${houseService.purpose}</td>
                        <td>${houseService.purposeInfo1}</td>
                        <td>${houseService.purposeInfo2}</td>
                        <td>${houseService.purposeInfo3}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:when>
    </c:choose>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

</body>
</html>