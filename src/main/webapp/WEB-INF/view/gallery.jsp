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

<c:choose>
    <c:when test="${mode == 'GALLERY_VIEW'}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Id</th>
                <th>image</th>
                <th>imageName</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="house" items="${houseImages}">
                <tr>
                    <td>${house.id}</td>
                    <td>${house.image}</td>
                    <td>${house.imageName}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>
</c:choose>
</body>
</html>