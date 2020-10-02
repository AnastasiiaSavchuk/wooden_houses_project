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
                <img src="../../image/aboutCompany/1_Header_House_Riverview.jpg" width="100%" height="820" alt="">
            </div>
            <div id="company">
                <c:forEach var="companyInfo" items="${companyInfo}">
                    <c:if test="${companyInfo.id == 1}">
                        <div id="info-1">
                            <h1><b>${companyInfo.infoName}</b></h1>
                            <h2><b>${companyInfo.infoType}</b></h2>
                            <p>${companyInfo.info1}</p>
                            <p>${companyInfo.info2}</p>
                            <p>${companyInfo.info3}</p>
                            <p>${companyInfo.info4}</p>
                            <p>${companyInfo.info5}</p>
                            <p>${companyInfo.info6}</p>
                            <p>${companyInfo.info7}</p>
                            <p>${companyInfo.info8}</p>
                        </div>
                    </c:if>
                    <c:if test="${companyInfo.id == 2}">
                        <div id="info-2">
                        <h1><b>${companyInfo.infoName}</b></h1>
                        <div class="info-2-ul">
                            <ul>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info1}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info2}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info3}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info4}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info5}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info6}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info7}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info8}</li>
                            </ul>
                        </div>
                    </c:if>
                    <c:if test="${companyInfo.id == 3}">
                        <div id="info-3">
                            <ul>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info1}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info2}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info3}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info4}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info5}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info6}</li>
                                <li><i class="fa fa-check" aria-hidden="true"></i> ${companyInfo.info7}</li>
                                <li>${companyInfo.info8}</li>
                            </ul>
                        </div>
                        </div>
                        <div class="nav-menu">
                            <div class="gallery">
                                <div><a href="${pageContext.request.contextPath}/frontend/gallery"><img
                                        src="../../image/aboutCompany/2_Gallery.jpg" alt=""></a></div>
                                <div><a href="${pageContext.request.contextPath}/frontend/gallery">
                                    <button>Gallery</button>
                                </a></div>
                            </div>
                            <div class="houses">
                                <div><a href="${pageContext.request.contextPath}/frontend/house"><img
                                        src="../../image/aboutCompany/3_HUF_Haus_Finder.jpg" alt=""></a></div>
                                <div><a href="${pageContext.request.contextPath}/frontend/house">
                                    <button>HUF Houses Finder</button>
                                </a></div>
                            </div>
                            <div class="service">
                                <div><a href="${pageContext.request.contextPath}/frontend/service"><img
                                        src="../../image/aboutCompany/4_Show-House.jpg" alt=""></a></div>
                                <div><a href="${pageContext.request.contextPath}/frontend/service">
                                    <button>Show service</button>
                                </a></div>
                            </div>
                            <div class="building">
                                <div><a href="${pageContext.request.contextPath}/frontend/building_a_house"><img
                                        src="../../image/aboutCompany/5_steps_building_house.jpg" alt=""></a></div>
                                <div><a href="${pageContext.request.contextPath}/frontend/building_a_house">
                                    <button>Six steps to dream home</button>
                                </a></div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${companyInfo.id == 4}">
                        <div id="info-4">
                            <h1><b>${companyInfo.infoName}</b></h1>
                            <h2><b>${companyInfo.infoType}</b></h2>
                            <p>${companyInfo.info1}</p>
                            <p>${companyInfo.info2}</p>
                            <p>${companyInfo.info3}</p>
                            <p>${companyInfo.info4}</p>
                            <p>${companyInfo.info5}</p>
                            <p>${companyInfo.info6}</p>
                            <p>${companyInfo.info7}</p>
                            <p>${companyInfo.info8}</p>
                        </div>
                    </c:if>
                    <c:if test="${companyInfo.id == 5}">
                        <div id="info-5">
                            <h1><b>${companyInfo.infoName}</b></h1>
                            <h2><b>${companyInfo.infoType}</b></h2>
                            <p>${companyInfo.info1}</p>
                            <p>${companyInfo.info2}</p>
                            <p>${companyInfo.info3}</p>
                            <p>${companyInfo.info4}</p>
                            <p>${companyInfo.info5}</p>
                            <p>${companyInfo.info6}</p>
                            <p>${companyInfo.info7}</p>
                            <p>${companyInfo.info8}</p>
                        </div>
                    </c:if>
                    <c:if test="${companyInfo.id == 6}">
                        <div id="info-6">
                            <h1><b>${companyInfo.infoName}</b></h1>
                            <h2><b>${companyInfo.infoType}</b></h2>
                            <p>${companyInfo.info1}</p>
                            <p>${companyInfo.info2}</p>
                            <p>${companyInfo.info3}</p>
                            <p>${companyInfo.info4}</p>
                            <p>${companyInfo.info5}</p>
                            <p>${companyInfo.info6}</p>
                            <p>${companyInfo.info7}</p>
                            <p>${companyInfo.info8}</p>
                        </div>
                    </c:if>
                    <c:if test="${companyInfo.id == 7}">
                        <div id="info-7">
                            <h1><b>${companyInfo.infoName}</b></h1>
                            <h2><b>${companyInfo.infoType}</b></h2>
                            <p>${companyInfo.info1}</p>
                            <p>${companyInfo.info2}</p>
                            <p>${companyInfo.info3}</p>
                            <p>${companyInfo.info4}</p>
                            <p>${companyInfo.info5}</p>
                            <p>${companyInfo.info6}</p>
                            <p>${companyInfo.info7}</p>
                            <p>${companyInfo.info8}</p>
                        </div>
                    </c:if>
                    <c:if test="${companyInfo.id == 8}">
                        <div id="info-8">
                            <h1><b>${companyInfo.infoName}</b></h1>
                            <h2><b>${companyInfo.infoType}</b></h2>
                            <p>${companyInfo.info1}</p>
                            <p>${companyInfo.info2}</p>
                            <p>${companyInfo.info3}</p>
                            <p>${companyInfo.info4}</p>
                            <p>${companyInfo.info5}</p>
                            <p>${companyInfo.info6}</p>
                            <p>${companyInfo.info7}</p>
                            <p>${companyInfo.info8}</p>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </c:when>
    </c:choose>
</div>
</body>
</html>