<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Header</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+SC:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="../../css/header.css">
</head>
<body>
<div id="header">
    <div id="logo" class="pull-left">
        <a href="${pageContext.request.contextPath}/frontend/company">
            <img class="logo" src="../../image/logo-black.svg" width="210" height="30" alt=""></a>
    </div>
    <nav id="nav-menu-container">
        <div class="nav-menu">
            <p class="menu-active"><a href="${pageContext.request.contextPath}/frontend/house">Houses</a></p>
            <p class="menu-active"><a href="${pageContext.request.contextPath}/frontend/service">Service</a></p>
            <p class="menu-active"><a href="${pageContext.request.contextPath}/frontend/gallery">Gallery</a></p>
            <p class="menu-active"><a href="${pageContext.request.contextPath}/frontend/building_a_house">Building
                a house</a></p>
            <p class="menu-active"><a href="${pageContext.request.contextPath}/frontend/contacts">Contact</a></p>
            <p class="menu-active"><a href="${pageContext.request.contextPath}/search.jsp"><i
                    class="fa fa-search"></i></a></p>
        </div>
    </nav>
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

<script src="../../js/header.js"></script>
</body>
</html>