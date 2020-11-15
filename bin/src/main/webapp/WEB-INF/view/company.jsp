<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Company information</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../css/company.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="slideshow">
    <div class="start-photo">
        <h1>Welcome to<br>HUF HAUS London<br><span>Visit us in Weybridge!</span></h1>
        <img src="../../image/aboutCompany/1_Header_House_Riverview.jpg" alt="" width="2560"
             height="720">
    </div>
    <div class="start-photo">
        <h1>In Harmony<br><span>Discovery nature. Evry day</span></h1>
        <img src="../../image/aboutCompany/2_Header-HUF-Haus-ART-6.jpg" alt="" width="2560"
             height="720">
    </div>
    <div class="start-photo">
        <h1>In Harmony<br><span>In the front row of nature's theatre</span></h1>
        <img src="../../image/aboutCompany/3_Header_HUF_Haus_ART_3.jpg" alt="" width="2560"
             height="720">
    </div>
</div>
<div style="text-align: center; margin-top: -2.5%;">
    <button class="dot" onclick="currentSlide(1)"></button>
    <button class="dot" onclick="currentSlide(2)"></button>
    <button class="dot" onclick="currentSlide(3)"></button>
</div>

<div class="main">
    <c:choose>
    <c:when test="${mode == 'COMPANY_VIEW'}">
    <c:forEach var="companyInfo" items="${companyInfo}">
        <c:if test="${companyInfo.id == 1}">
            <div id="info-1">
                <h1>${companyInfo.infoName}<br>${companyInfo.infoType}</h1>
                <p>${companyInfo.info1}</p>
                <p>${companyInfo.info2}</p>
                <p>${companyInfo.info3}</p>
                <p>${companyInfo.info4}</p>
                <p>${companyInfo.info5}</p>
                <p>${companyInfo.info6}</p>
            </div>
        </c:if>
        <c:if test="${companyInfo.id == 2}">
            <h1 style="text-align: center">${companyInfo.infoName}</h1>
            <div id="info-2">
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info1}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info2}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info3}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info4}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info5}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info6}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info7}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info8}</p>
            </div>
        </c:if>
        <c:if test="${companyInfo.id == 3}">
            <div id="info-3">
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info1}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info2}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info3}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info4}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info5}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info6}</p>
                <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info7}</p>
            </div>
        </c:if>
    </c:forEach>
</div>

<div class="middleNav">
    <div class="quickMenu">
        <a href="${pageContext.request.contextPath}/frontend/gallery">
            <img src="../../image/aboutCompany/2_Gallery.jpg" alt="">
            <div>
                <a href="${pageContext.request.contextPath}/frontend/gallery">
                    <button>Gallery</button>
                </a>
            </div>
        </a>
    </div>
    <div class="quickMenu">
        <a href="${pageContext.request.contextPath}/frontend/house">
            <img src="../../image/aboutCompany/3_HUF_Haus_Finder.jpg" alt="">
            <div>
                <a href="${pageContext.request.contextPath}/frontend/house">
                    <button>HUF Houses Finder</button>
                </a>
            </div>
        </a>
    </div>
    <div class="quickMenu">
        <a href="${pageContext.request.contextPath}/frontend/service">
            <img src="../../image/aboutCompany/4_Show-House.jpg" alt="">
            <div>
                <a href="${pageContext.request.contextPath}/frontend/service">
                    <button>Show service</button>
                </a>
            </div>
        </a>
    </div>
    <div class="quickMenu">
        <a href="${pageContext.request.contextPath}/frontend/building_a_house">
            <img src="../../image/aboutCompany/5_steps_building_house.jpg" alt="">
            <div>
                <a href="${pageContext.request.contextPath}/frontend/building_a_house">
                    <button>Six steps to dream home</button>
                </a>
            </div>
        </a>
    </div>
</div>

<div class="middle-photo">
    <h1>Glass. Light. Character.</h1>
</div>

<div class="main">
    <c:forEach var="companyInfo" items="${companyInfo}">
        <c:if test="${companyInfo.id == 4}">
            <div id="info-4">
                <div>
                    <h1 style="text-align: center">${companyInfo.infoName}</h1>
                    <h2>${companyInfo.infoType}</h2>
                    <p>${companyInfo.info1}</p>
                    <p>${companyInfo.info2}</p>
                </div>
            </div>
        </c:if>
        <c:if test="${companyInfo.id == 5}">
            <div id="info-5">
                <h1 style="text-align: center;text-transform: none;font-size: 24px;">${companyInfo.infoName}</h1>
                <button class="accordion">${companyInfo.infoType}</button>
                <div class="panel">
                    <p>${companyInfo.info1}</p>
                    <p style="font-weight: 700">${companyInfo.info2}</p>
                    <p>${companyInfo.info3}</p>
                    <p>${companyInfo.info4}</p>
                </div>
            </div>
        </c:if>
        <c:if test="${companyInfo.id == 6}">
            <div id="info-6">
                <button class="accordion">${companyInfo.infoType}</button>
                <div class="panel">
                    <p>${companyInfo.info1}</p>
                    <p>${companyInfo.info2}</p>
                    <p>${companyInfo.info3}</p>
                    <p>${companyInfo.info4}</p>
                    <p>${companyInfo.info5}</p>
                    <p>${companyInfo.info6}</p>
                    <p>${companyInfo.info7}</p>
                </div>
            </div>
        </c:if>
        <c:if test="${companyInfo.id == 7}">
            <div id="info-7">
                <button class="accordion">${companyInfo.infoType}</button>
                <div class="panel">
                    <p>${companyInfo.info1}</p>
                    <p>${companyInfo.info2}</p>
                    <p>${companyInfo.info3}</p>
                    <p style="font-weight: 700; padding: 0">${companyInfo.info4}</p>
                    <p>${companyInfo.info5}</p>
                    <p>${companyInfo.info6}</p>
                </div>
            </div>
        </c:if>
        <c:if test="${companyInfo.id == 8}">
            <div id="info-8">
                <button class="accordion">${companyInfo.infoType}</button>
                <div class="panel">
                    <p style="font-weight: 700; padding: 0">${companyInfo.info1}</p>
                    <p>${companyInfo.info2}</p>
                    <p style="font-weight: 700; padding: 0">${companyInfo.info3}</p>
                    <p>${companyInfo.info4}</p>
                    <p style="font-weight: 700; padding: 0">${companyInfo.info5}</p>
                    <p>${companyInfo.info6}</p>
                </div>
            </div>
        </c:if>
    </c:forEach>
    </c:when>
    </c:choose>
</div>

<script src="../../js/slideShow.js"></script>
<script src="../../js/accordion.js"></script>
</body>
</html>