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
        <img src="../../image/service/1_header.jpg" alt="" width="2560" height="720">
    </div>
    <div class="start-photo">
        <img src="../../image/service/2_header.jpg" alt="" width="2560" height="720">
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
                <a href="${pageContext.request.contextPath}/frontend/contacts">
                    <button>Contact us</button>
                </a><br>
                <a href="#" onclick="window.open('../../siteContent/ServiceART_Flyer_GB.pdf', '_blank')">
                    <button>Flyer</button>
                </a>
            </div>
        </c:if>
        <c:if test="${house.id == 2}">
            <div id="info-2">
                <h2>${house.description}</h2>
                <p>${house.part1}</p>
                <p>${house.part2}
                    <a href="#" onclick="window.open('../../siteContent/ServiceART_Flyer_GB.pdf', '_blank')"
                       style="color: #44b827; font-weight: 700">download your ServiceART flyer</a> here.</p>
                <p>${house.part3} <a href="mailto: serviceart@huf-hause.com" style="color: #44b827; font-weight: 700">serviceart@huf-haus.com</a>
                    or via the <a href="${pageContext.request.contextPath}/frontend/contacts"
                                  style="color: #44b827; font-weight: 700">contact form</a>.</p>
            </div>
        </c:if>
    </c:forEach>
</div>

<div class="middleNav">
    <c:forEach var="house" items="${houseService}">
        <c:if test="${house.id == 3}">
            <div class="serviceMenu">
                <div>
                    <img src="../../image/service/4-modernisation.jpg" alt="">
                </div>
                <div class="shortInfo">
                    <h2>${house.name}</h2>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/frontend/contacts">
                        <button>Contact Us</button>
                    </a>
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 4}">
            <div class="serviceMenu">
                <div>
                    <img src="../../image/service/5-energy.jpg" alt="">
                </div>
                <div class="shortInfo">
                    <h2>${house.name}</h2>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/frontend/contacts">
                        <button>Contact Us</button>
                    </a>
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 5}">
            <div class="serviceMenu">
                <div>
                    <img src="../../image/service/6-extensions.jpg" alt="">
                </div>
                <div class="shortInfo">
                    <h2>${house.name}</h2>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/frontend/contacts">
                        <button>Contact Us</button>
                    </a>
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 6}">
            <div class="serviceMenu">
                <div>
                    <img src="../../image/service/7-service.jpg" alt="">
                </div>
                <div class="shortInfo">
                    <h2>${house.name}</h2>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/frontend/contacts">
                        <button>Contact Us</button>
                    </a>
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 7}">
            <div class="serviceMenu">
                <div>
                    <img src="../../image/service/8-maintenance.jpg" alt="">
                </div>
                <div class="shortInfo">
                    <h2>${house.name}</h2>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/frontend/contacts">
                        <button>Contact Us</button>
                    </a>
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 8}">
            <div class="serviceMenu">
                <div>
                    <img src="../../image/service/9-sun%20protection.jpg" alt="">
                </div>
                <div class="shortInfo">
                    <h2>${house.name}</h2>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part1}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part2}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part3}</p>
                    <p><i class="fa fa-check" aria-hidden="true"></i>${house.part4}</p>
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/frontend/contacts">
                        <button>Contact Us</button>
                    </a>
                </div>
            </div>
        </c:if>
    </c:forEach>
</div>

<div class="middle-photo">
    <div class="shadow">
        <h1>Longlasting Happiness</h1>
        <a href="#" onclick="window.open('../../siteContent/ServiceART_Flyer_GB.pdf', '_blank')">
            <button>Flyer</button>
        </a>
    </div>
</div>

<div class="main">
    <c:forEach var="house" items="${houseService}">
        <c:if test="${house.id == 9}">
            <div id="info-9">
                <h1>${house.name}</h1>
            </div>
        </c:if>
        <c:if test="${house.id == 10}">
            <div id="info-10">
                <p>${house.part1}</p>
                <p>${house.part2}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 11}">
            <div id="info-11">
                <div>
                    <img src="../../image/service/10_Franz-Huf.jpg" alt="">
                </div>
                <p style="padding: 2%; font-weight: 500">${house.description}</p>
            </div>
        </c:if>
        <c:if test="${house.id == 12}">
            <div id="info-12">
                <h1>${house.name}</h1>
                <p>${house.description}</p>
                <p>${house.part1}</p>
                <p style="font-weight: 900"> ${house.part2}</p>
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