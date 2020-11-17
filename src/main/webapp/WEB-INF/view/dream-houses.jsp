<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Dream house</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../css/dream-houses.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="slideshow">
    <div class="start-photo">
        <h1>Be inspired by our dream house</h1>
        <img src="../../image/dream_house/1_house_Header_HUF_Haus_ART_5.jpg" alt="" width="2560" height="600">
    </div>
    <div class="start-photo">
        <img src="../../image/dream_house/2_house_Header_HUF_Haus_ART_5.jpg" alt="" width="2560" height="600">
    </div>
</div>
<div style="text-align: center; margin-top: -2.5%;">
    <button class="dot" onclick="currentSlide(1)"></button>
    <button class="dot" onclick="currentSlide(2)"></button>
</div>

<div class="main">
    <c:choose>
        <c:when test="${mode == 'HOUSES_VIEW'}">
            <c:forEach var="house" items="${house}">
                <c:if test="${house.id == 1}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__2.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 2}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 3}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_3.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 4}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/4-Art_3_sample_2/Art_3_sample_2_2.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 5}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/5-Modum_10_sample_1/middle_MODUM_10_sample_1_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 6}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/6-Art_5_sample_4/Art_5_sample_4_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 7}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/7-Modum_15_sample_8/1_Header_MODUM_15_sample_8_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 8}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/8-Art_3_sample_5/ART_3_sample_5_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 9}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/9-extention_sample_1/Extension_sample_1_4.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 10}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/10-Art_Bungalow_sample_3/Art_Bungalow_sample_3_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${house.id == 11}">
                    <div class="aboutHouse">
                        <a href="dream_house/${house.id}">
                            <div>
                                <img src="../../image/11-Art_5_sample_6/1_header_Art_5_sample_6_2.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h1>${house.houseName}</h1>
                                <h2>${house.houseType}</h2>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div style="text-align: center">
                                <a href="dream_house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </a>
                    </div>
                </c:if>
            </c:forEach>
        </c:when>
    </c:choose>
</div>

<script src="../../js/slideShow.js"></script>
</body>
</html>