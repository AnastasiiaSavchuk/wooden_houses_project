<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Dream house</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../css/service.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="slideshow">
    <div class="start-photo">
        <img src="../../image/service/1_header.jpg" alt="" width="100%" height="720">
    </div>
    <div class="start-photo">
        <img src="../../image/service/2_header.jpg" alt="" width="100%" height="720">
    </div>
    <div class="start-photo">
        <img src="../../image/service/3_header.jpg" alt="" width="2560" height="720">
    </div>
</div>
<div style="text-align: center; margin-top: -2.5%;">
    <button class="dot" onclick="currentSlide(1)"></button>
    <button class="dot" onclick="currentSlide(2)"></button>
    <button class="dot" onclick="currentSlide(3)"></button>
</div>

<div class="main">
    <c:choose>
    <c:when test="${mode == 'SERVICE_VIEW'}">
    <c:forEach var="house" items="${houseService}">
        <c:if test="${house.id == 1}">
            <div id="info-1">
                <h1>${house.name}</h1>
                <h1>${house.description}</h1>
                <p>${house.part1}</p>
                <p>${house.part2}</p>
                <p>${house.part3}</p>
                <p>${house.part4}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 2}">
            <div id="info-2">
                <h1>${house.name}</h1>
                <h1>${house.description}</h1>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 3}">
            <div id="info-3">
                <h1>${house.name}</h1>
                <h1>${house.description}</h1>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 4}">
            <div id="info-4">
                <h1>${house.name}</h1>
                <h1>${house.description}</h1>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 5}">
            <div id="info-5">
                <h1>${house.name}</h1>
                <h1>${house.description}</h1>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 6}">
            <div id="info-6">
                <h1>${house.name}</h1>
                <h1>${house.description}</h1>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 7}">
            <div id="info-7">
                <h1>${house.name}</h1>
                <h1>${house.description}</h1>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
            </div>
        </c:if>
    </c:forEach>
</div>

<div class="middle-photo">
    <h1 style="text-align: center">Glass. Light. Character.</h1>
</div>

<div class="main">
    <c:forEach var="house" items="${houseService}">
        <c:if test="${house.id == 8}">
            <div id="info-8">
                <h1>${house.name}</h1>
                <h2>${house.description}</h2>
                <p>${house.part1}</p>
                <p>${house.part2}</p>
                <p>${house.part3}</p>
                <p>${house.part4}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 9}">
            <div id="info-9">
                <h1>${house.name}</h1>
                <h2>${house.description}</h2>
                <p>${house.part1}</p>
                <p>${house.part2}</p>
                <p>${house.part3}</p>
                <p>${house.part4}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 10}">
            <div id="info-10">
                <h1>${house.name}</h1>
                <h2>${house.description}</h2>
                <p>${house.part1}</p>
                <p>${house.part2}</p>
                <p>${house.part3}</p>
                <p>${house.part4}</p>

            </div>
        </c:if>
    </c:forEach>
    </c:when>
    </c:choose>
</div>

<script src="../../js/slideShow.js"></script>
</body>
</html>