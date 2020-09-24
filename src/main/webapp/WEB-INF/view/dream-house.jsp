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
    <link rel="stylesheet" href="../../css/house.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<c:choose>
    <c:when test="${mode == 'HOUSE_VIEW'}">
        <div>
            <div class="header-text">
                <p class="header-p"><b>Be inspired by our dream houses</b></p>
            </div>
            <img src="../../image/house_header_ART_5.jpg" width="100%" height="555" alt="">
        </div>
        <c:forEach var="house" items="${house}">
            <div id="houses">
                <div class="col-sm-4">
                    <img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__1.jpg" width="345" height="230"
                         alt="">
                </div>
                <div id="shortInfo">
                    <h2>${house.house}</h2>
                    <h2>${housee.type}</h2>
                    <div><p>${house.feature1}</p></div>
                    <div><p>${house.feature2}</p></div>
                    <div><p>${house.roofPitch}</p></div>
                    <div><p>${house.houseFootprint}</p></div>
                    <div>
                        <button><a href="house/${house.id}">To the project</a></button>
                    </div>
                </div>
            </div>
        </c:forEach>
        <%--<c:forEach var="house" items="${house}">
                        <td>${house.id}</td>
                        <td>${house.house}</td>
                        <td>${house.type}</td>
                        <td>${house.info}</td>
                        <td>${house.story1}</td>
                        <td>${house.story2}</td>
                        <td>${house.story3}</td>
                        <td>${house.story4}</td>
                        <td>${house.story5}</td>
                        <td>${house.story6}</td>
                        <td>${house.story7}</td>
                        <td>${house.story8}</td>
                        <td>${house.dimensions}</td>
                        <td>${house.houseFootprint}</td>
                        <td>${house.totalGrossExternalArea}</td>
                        <td>${house.roofPitch}</td>
                        <td>${house.feature1}</td>
                        <td>${house.feature2}</td>
                        <td>${house.purpose}</td>
                        <td>${house.purposeInfo1}</td>
                        <td>${house.purposeInfo2}</td>
                        <td>${house.purposeInfo3}</td>
                </c:forEach>--%>
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