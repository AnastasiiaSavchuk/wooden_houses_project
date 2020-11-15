<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Dream house by id</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../css/houseById.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div>
    <h2>${house.houseName}</h2>
    <h4>${house.houseType}</h4>
    <p>${house.info}</p>
    <p>${house.story1}</p>
    <p>${house.story2}</p>
    <p>${house.story3}</p>
    <p>${house.story4}</p>
    <p>${house.story5}</p>
    <p>${house.story6}</p>
    <p>${house.story7}</p>
    <p>${house.story8}</p>
    <p>${house.dimensions}</p>
    <p>${house.footprint}</p>
    <p>${house.totalGrossExternalArea}</p>
    <p>${house.roofPitch}</p>
    <p>${house.feature1}</p>
    <p>${house.feature2}</p>
    <p>${house.purpose}</p>
    <p>${house.purposeInfo1}</p>
    <p>${house.purposeInfo2}</p>
    <p>${house.purposeInfo3}</p>
</div>

</body>
</html>