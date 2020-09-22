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
    <link rel="stylesheet" href="css/header.css">
</head>
<body>
<header id="header">
    <div class="container">
        <div id="logo" class="pull-left">
            <h1 class="scrollto">
                <a href="${pageContext.request.contextPath}/frontend/company">
                    <img src="../../image/logo-black.svg" width="220" height="33" alt=""></a></h1>
        </div>

        <nav id="nav-menu-container">
            <ul class="nav-menu">
                <li class="menu-active"><a href="${pageContext.request.contextPath}/frontend/houses">House</a></li>
                <li class="menu-active"><a href="${pageContext.request.contextPath}/frontend/service">SERVICE</a></li>
                <li class="menu-active"><a href="${pageContext.request.contextPath}/frontend/gallery">GALLERY</a></li>
                <li class="menu-active"><a href="${pageContext.request.contextPath}/frontend/building_a_house">BUILDING
                    A HOUSE</a>
                </li>
                <li class="menu-active"><a href="${pageContext.request.contextPath}/frontend/contacts">CONTACT</a></li>
                <li class="menu-active"><a href="${pageContext.request.contextPath}/search.jsp"><i
                        class="fa fa-search"></i></a></li>
            </ul>
        </nav>
    </div>
</header>

<script src="js/header.js"></script>
</body>
</html>