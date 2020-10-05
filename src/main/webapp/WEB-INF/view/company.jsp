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

<c:choose>
    <c:when test="${mode == 'COMPANY_VIEW'}">
        <div id="company">
            <c:forEach var="companyInfo" items="${companyInfo}">
                <c:if test="${companyInfo.id == 1}">
                    <div id="info-1">
                        <div class="slideshow">
                            <div class="start-photo">
                                <h1>Welcome to<br>HUF HAUS London<br><span>Visit us in Weybridge!</span></h1>
                                <img src="../../image/aboutCompany/1_Header_House_Riverview.jpg" alt="" width="2560"
                                     height="720">
                                <div style="text-align:center">
                                    <span class="underscore"></span>
                                    <span class="underscore"></span>
                                    <span class="underscore"></span>
                                </div>
                            </div>
                            <div class="start-photo">
                                <h1>In Harmony<br><span>Discovery nature. Evry day</span></h1>
                                <img src="../../image/aboutCompany/2_Header-HUF-Haus-ART-6.jpg" alt="" width="2560"
                                     height="720">
                                <div style="text-align:center">
                                    <span class="underscore"></span>
                                    <span class="underscore"></span>
                                    <span class="underscore"></span>
                                </div>
                            </div>
                            <div class="start-photo">
                                <h1>In Harmony<br><span>In the front row of nature's theatre</span></h1>
                                <img src="../../image/aboutCompany/3_Header_HUF_Haus_ART_3.jpg" alt="" width="2560"
                                     height="720">
                                <div style="text-align:center">
                                    <span class="underscore"></span>
                                    <span class="underscore"></span>
                                    <span class="underscore"></span>
                                </div>
                            </div>
                        </div>
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
                    <div id="info-2">
                        <h1>${companyInfo.infoName}</h1>
                        <div>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info1}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info2}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info3}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info4}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info5}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info6}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info7}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info8}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${companyInfo.id == 3}">
                    <div id="info-3">
                        <div>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info1}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info2}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info3}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info4}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info5}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info6}</p>
                            <p><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info7}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${companyInfo.id == 4}">
                    <div id="info-4">
                        <div class="menu">
                            <div class="quick-menu">
                                <a href="${pageContext.request.contextPath}/frontend/gallery"><img
                                        src="../../image/aboutCompany/2_Gallery.jpg" alt=""></a>
                                <div><a href="${pageContext.request.contextPath}/frontend/gallery">
                                    <button>Gallery</button>
                                </a></div>
                            </div>
                            <div class="quick-menu">
                                <a href="${pageContext.request.contextPath}/frontend/house"><img
                                        src="../../image/aboutCompany/3_HUF_Haus_Finder.jpg" alt=""></a>
                                <div><a href="${pageContext.request.contextPath}/frontend/house">
                                    <button>HUF Houses Finder</button>
                                </a></div>
                            </div>
                            <div class="quick-menu">
                                <a href="${pageContext.request.contextPath}/frontend/service"><img
                                        src="../../image/aboutCompany/4_Show-House.jpg" alt=""></a>
                                <div><a href="${pageContext.request.contextPath}/frontend/service">
                                    <button>Show service</button>
                                </a></div>
                            </div>
                            <div class="quick-menu">
                                <a href="${pageContext.request.contextPath}/frontend/building_a_house"><img
                                        src="../../image/aboutCompany/5_steps_building_house.jpg" alt=""></a>
                                <div><a href="${pageContext.request.contextPath}/frontend/building_a_house">
                                    <button>Six steps to dream home</button>
                                </a></div>
                            </div>
                        </div>
                        <div class="middle-photo">
                            <h1>Glass. Light. Character.</h1>
                        </div>
                        <div>
                            <h1>${companyInfo.infoName}</h1>
                            <h2>${companyInfo.infoType}</h2>
                            <p>${companyInfo.info1}</p>
                            <p>${companyInfo.info2}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${companyInfo.id == 5}">
                    <div id="info-5">
                        <h1>${companyInfo.infoName}</h1>
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
        </div>
        </div>
    </c:when>
</c:choose>

<script src="../../js/company.js"></script>
</body>
</html>