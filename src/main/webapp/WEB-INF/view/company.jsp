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
    <link rel="stylesheet" href="../../css/company.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="main">
    <c:choose>
    <c:when test="${mode == 'COMPANY_VIEW'}">
    <div>
        <div class="header-text">
            <p class="header-p">Welcome to </p>
            <p class="header-p">HUF HAUS London</p>
            <p>Visit us in Weybridge!</p>
        </div>
        <img src="../../image/aboutCompany/1_Header_House_Riverview.jpg" width="100%" height="745" alt="">
    </div>
    <div id="company">
        <c:forEach var="infoAboutCompany" items="${infoAboutCompany}">
            <c:if test="${infoAboutCompany.id == 1}">
                <div id="info-1">
                    <h1><b>${infoAboutCompany.informationName}</b></h1>
                    <h2><b>${infoAboutCompany.informationType}</b></h2>
                    <p>${infoAboutCompany.information1}</p>
                    <p>${infoAboutCompany.information2}</p>
                    <p>${infoAboutCompany.information3}</p>
                    <p>${infoAboutCompany.information4}</p>
                    <p>${infoAboutCompany.information5}</p>
                    <p>${infoAboutCompany.information6}</p>
                    <p>${infoAboutCompany.information7}</p>
                    <p>${infoAboutCompany.information8}</p>
                </div>
            </c:if>
            <c:if test="${infoAboutCompany.id == 2}">
                <div id="info-2">
                    <h1><b>${infoAboutCompany.informationName}</b></h1>
                    <h2><b>${infoAboutCompany.informationType}</b></h2>
                    <p>${infoAboutCompany.information1}</p>
                    <p>${infoAboutCompany.information2}</p>
                    <p>${infoAboutCompany.information3}</p>
                    <p>${infoAboutCompany.information4}</p>
                    <p>${infoAboutCompany.information5}</p>
                    <p>${infoAboutCompany.information6}</p>
                    <p>${infoAboutCompany.information7}</p>
                    <p>${infoAboutCompany.information8}</p>
                </div>
            </c:if>
            <c:if test="${infoAboutCompany.id == 3}">
                <div id="info-3">
                    <h1><b>${infoAboutCompany.informationName}</b></h1>
                    <h2><b>${infoAboutCompany.informationType}</b></h2>
                    <p>${infoAboutCompany.information1}</p>
                    <p>${infoAboutCompany.information2}</p>
                    <p>${infoAboutCompany.information3}</p>
                    <p>${infoAboutCompany.information4}</p>
                    <p>${infoAboutCompany.information5}</p>
                    <p>${infoAboutCompany.information6}</p>
                    <p>${infoAboutCompany.information7}</p>
                    <p>${infoAboutCompany.information8}</p>
                </div>
            </c:if>
            <c:if test="${infoAboutCompany.id == 4}">
                <div id="info-4">
                    <h1><b>${infoAboutCompany.informationName}</b></h1>
                    <h2><b>${infoAboutCompany.informationType}</b></h2>
                    <p>${infoAboutCompany.information1}</p>
                    <p>${infoAboutCompany.information2}</p>
                    <p>${infoAboutCompany.information3}</p>
                    <p>${infoAboutCompany.information4}</p>
                    <p>${infoAboutCompany.information5}</p>
                    <p>${infoAboutCompany.information6}</p>
                    <p>${infoAboutCompany.information7}</p>
                    <p>${infoAboutCompany.information8}</p>
                </div>
            </c:if>
            <c:if test="${infoAboutCompany.id == 5}">
                <div id="info-5">
                    <h1><b>${infoAboutCompany.informationName}</b></h1>
                    <h2><b>${infoAboutCompany.informationType}</b></h2>
                    <p>${infoAboutCompany.information1}</p>
                    <p>${infoAboutCompany.information2}</p>
                    <p>${infoAboutCompany.information3}</p>
                    <p>${infoAboutCompany.information4}</p>
                    <p>${infoAboutCompany.information5}</p>
                    <p>${infoAboutCompany.information6}</p>
                    <p>${infoAboutCompany.information7}</p>
                    <p>${infoAboutCompany.information8}</p>
                </div>
            </c:if>
            <c:if test="${infoAboutCompany.id == 6}">
                <div id="info-6">
                    <h1><b>${infoAboutCompany.informationName}</b></h1>
                    <h2><b>${infoAboutCompany.informationType}</b></h2>
                    <p>${infoAboutCompany.information1}</p>
                    <p>${infoAboutCompany.information2}</p>
                    <p>${infoAboutCompany.information3}</p>
                    <p>${infoAboutCompany.information4}</p>
                    <p>${infoAboutCompany.information5}</p>
                    <p>${infoAboutCompany.information6}</p>
                    <p>${infoAboutCompany.information7}</p>
                    <p>${infoAboutCompany.information8}</p>
                </div>
            </c:if>
            <c:if test="${infoAboutCompany.id == 7}">
                <div id="info-7">
                    <h1><b>${infoAboutCompany.informationName}</b></h1>
                    <h2><b>${infoAboutCompany.informationType}</b></h2>
                    <p>${infoAboutCompany.information1}</p>
                    <p>${infoAboutCompany.information2}</p>
                    <p>${infoAboutCompany.information3}</p>
                    <p>${infoAboutCompany.information4}</p>
                    <p>${infoAboutCompany.information5}</p>
                    <p>${infoAboutCompany.information6}</p>
                    <p>${infoAboutCompany.information7}</p>
                    <p>${infoAboutCompany.information8}</p>
                </div>
            </c:if>
            <c:if test="${infoAboutCompany.id == 8}">
                <div id="info-8">
                    <h1><b>${infoAboutCompany.informationName}</b></h1>
                    <h2><b>${infoAboutCompany.informationType}</b></h2>
                    <p>${infoAboutCompany.information1}</p>
                    <p>${infoAboutCompany.information2}</p>
                    <p>${infoAboutCompany.information3}</p>
                    <p>${infoAboutCompany.information4}</p>
                    <p>${infoAboutCompany.information5}</p>
                    <p>${infoAboutCompany.information6}</p>
                    <p>${infoAboutCompany.information7}</p>
                    <p>${infoAboutCompany.information8}</p>
                </div>
            </c:if>
        </c:forEach>
    </div>
    </c:when>
    </c:choose>

</body>
</html>