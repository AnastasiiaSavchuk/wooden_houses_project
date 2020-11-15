<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Dream house</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../css/building-a-house.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="slideshow">
    <div class="start-photo">
        <img src="../../image/building/1-header_Header_HUF_Haus_ART_6.jpg" alt="" width="2560" height="720">
    </div>
</div>

<div class="main">
    <c:choose>
        <c:when test="${mode == 'BUILDING_VIEW'}">
            <c:forEach var="houseConstructionInfo" items="${houseConstructionInfo}">
                <c:if test="${houseConstructionInfo.id == 1}">
                    <div id="info-1">
                        <h1>${houseConstructionInfo.name}</h1>
                        <h1>${houseConstructionInfo.description1}</h1>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 2}">
                    <div id="info-2">
                        <h1>${houseConstructionInfo.name}</h1>
                        <p>${houseConstructionInfo.description1}</p>
                        <p>${houseConstructionInfo.description2}</p>
                        <p>${houseConstructionInfo.description3}</p>
                        <p>${houseConstructionInfo.description4}</p>
                        <p>${houseConstructionInfo.description5}</p>
                        <p>${houseConstructionInfo.description6}</p>
                        <p>${houseConstructionInfo.description7}</p>
                        <p>${houseConstructionInfo.description8}</p>
                    </div>
                </c:if>

                <c:if test="${houseConstructionInfo.id == 3}">
                    <div id="info-3">
                        <h1>${houseConstructionInfo.name}</h1>
                        <p>${houseConstructionInfo.description1}</p>
                        <p>${houseConstructionInfo.description2}</p>
                        <p>${houseConstructionInfo.description3}</p>
                        <p>${houseConstructionInfo.description4}</p>
                        <p>${houseConstructionInfo.description5}</p>
                        <p>${houseConstructionInfo.description6}</p>
                        <p>${houseConstructionInfo.description7}</p>
                        <p>${houseConstructionInfo.description8}</p>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 4}">
                    <div class="constructionStage">
                        <div>
                            <img src="../../image/building/1_planning_phase.jpg" alt="">
                        </div>
                        <div class="shortInfo">
                            <h1>${houseConstructionInfo.name}</h1>
                            <p>${houseConstructionInfo.description1}</p>
                            <p>${houseConstructionInfo.description2}</p>
                            <p>${houseConstructionInfo.description3}</p>
                            <p>${houseConstructionInfo.description4}</p>
                            <p>${houseConstructionInfo.description5}</p>
                            <p>${houseConstructionInfo.description6}</p>
                            <p>${houseConstructionInfo.description7}</p>
                            <p>${houseConstructionInfo.description8}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 5}">
                    <div class="constructionStage">
                        <div>
                            <img src="../../image/building/2_the_sales_contract.jpg" alt="">
                        </div>
                        <div class="shortInfo">
                            <h1>${houseConstructionInfo.name}</h1>
                            <p>${houseConstructionInfo.description1}</p>
                            <p>${houseConstructionInfo.description2}</p>
                            <p>${houseConstructionInfo.description3}</p>
                            <p>${houseConstructionInfo.description4}</p>
                            <p>${houseConstructionInfo.description5}</p>
                            <p>${houseConstructionInfo.description6}</p>
                            <p>${houseConstructionInfo.description7}</p>
                            <p>${houseConstructionInfo.description8}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 6}">
                    <div class="constructionStage">
                        <div>
                            <img src="../../image/building/3_the_fit_out_protocol.jpg" alt="">
                        </div>
                        <div class="shortInfo">
                            <h1>${houseConstructionInfo.name}</h1>
                            <p>${houseConstructionInfo.description1}</p>
                            <p>${houseConstructionInfo.description2}</p>
                            <p>${houseConstructionInfo.description3}</p>
                            <p>${houseConstructionInfo.description4}</p>
                            <p>${houseConstructionInfo.description5}</p>
                            <p>${houseConstructionInfo.description6}</p>
                            <p>${houseConstructionInfo.description7}</p>
                            <p>${houseConstructionInfo.description8}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 7}">
                    <div class="constructionStage">
                        <div>
                            <img src="../../image/building/4_the_manufacture.jpg" alt="">
                        </div>
                        <div class="shortInfo">
                            <h1>${houseConstructionInfo.name}</h1>
                            <p>${houseConstructionInfo.description1}</p>
                            <p>${houseConstructionInfo.description2}</p>
                            <p>${houseConstructionInfo.description3}</p>
                            <p>${houseConstructionInfo.description4}</p>
                            <p>${houseConstructionInfo.description5}</p>
                            <p>${houseConstructionInfo.description6}</p>
                            <p>${houseConstructionInfo.description7}</p>
                            <p>${houseConstructionInfo.description8}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 8}">
                    <div class="constructionStage">
                        <div>
                            <img src="../../image/building/5_building_process_and_handover.jpg" alt="">
                        </div>
                        <div class="shortInfo">
                            <h1>${houseConstructionInfo.name}</h1>
                            <p>${houseConstructionInfo.description1}</p>
                            <p>${houseConstructionInfo.description2}</p>
                            <p>${houseConstructionInfo.description3}</p>
                            <p>${houseConstructionInfo.description4}</p>
                            <p>${houseConstructionInfo.description5}</p>
                            <p>${houseConstructionInfo.description6}</p>
                            <p>${houseConstructionInfo.description7}</p>
                            <p>${houseConstructionInfo.description8}</p>
                        </div>
                    </div>
                </c:if>

                <c:if test="${houseConstructionInfo.id == 9}">
                    <div class="constructionStage">
                        <div>
                            <img src="../../image/building/6_the_feel_good_factor_the_after_care.jpg" alt="">
                        </div>
                        <div class="shortInfo">
                            <h1>${houseConstructionInfo.name}</h1>
                            <p>${houseConstructionInfo.description1}</p>
                            <p>${houseConstructionInfo.description2}</p>
                            <p>${houseConstructionInfo.description3}</p>
                            <p>${houseConstructionInfo.description4}</p>
                            <p>${houseConstructionInfo.description5}</p>
                            <p>${houseConstructionInfo.description6}</p>
                            <p>${houseConstructionInfo.description7}</p>
                            <p>${houseConstructionInfo.description8}</p>
                        </div>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 10}">
                    <div id="info-4">
                        <button class="accordion">${houseConstructionInfo.name}</button>
                        <div class="panel">
                            <div class="image">
                                <img src="../../image/building/1.1_shaping_the_dream.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2>${houseConstructionInfo.description1}</h2>
                                <p>${houseConstructionInfo.description2}</p>
                                <p>${houseConstructionInfo.description3}</p>
                                <p>${houseConstructionInfo.description4}</p>
                                <p>${houseConstructionInfo.description5}</p>
                                <p>${houseConstructionInfo.description6}</p>
                                <p>${houseConstructionInfo.description7}</p>
                                <p>${houseConstructionInfo.description8}</p>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 11}">
                    <div id="info-5">
                        <button class="accordion">${houseConstructionInfo.name}</button>
                        <div class="panel">
                            <div class="image">
                                <div>
                                    <img src="../../image/building/2.1_huf_basement_and_huf_house.jpg" alt="">
                                </div>
                                <div>
                                    <img src="../../image/building/2.2_huf_basement_and_huf_house.jpg" alt="">
                                </div>
                            </div>
                            <div class="shortInfo">
                                <h2>${houseConstructionInfo.description1}</h2>
                                <p>${houseConstructionInfo.description2}</p>
                                <p>${houseConstructionInfo.description3}</p>
                                <p>${houseConstructionInfo.description4}</p>
                                <p>${houseConstructionInfo.description5}</p>
                                <p>${houseConstructionInfo.description6}</p>
                                <p>${houseConstructionInfo.description7}</p>
                                <p>${houseConstructionInfo.description8}</p>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${houseConstructionInfo.id == 12}">
                    <div id="info-6">
                        <button class="accordion">${houseConstructionInfo.name}</button>
                        <div class="panel">
                            <div class="image">
                                <div>
                                    <img src="../../image/building/3.1_art.jpg" alt="">
                                    <div class="name">
                                        <p>art</p>
                                    </div>
                                </div>
                                <div>
                                    <img src="../../image/building/3.2_modum.jpg" alt="">
                                    <div class="name">
                                        <p>modum</p>
                                    </div>
                                </div>
                            </div>
                            <div class="shortInfo">
                                <h2>${houseConstructionInfo.description1}</h2>
                                <p>${houseConstructionInfo.description2}</p>
                                <p>${houseConstructionInfo.description3}</p>
                                <p>${houseConstructionInfo.description4}</p>
                                <p>${houseConstructionInfo.description5}</p>
                                <p>${houseConstructionInfo.description6}</p>
                                <p>${houseConstructionInfo.description7}</p>
                                <p>${houseConstructionInfo.description8}</p>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </c:when>
    </c:choose>
</div>

<script src="../../js/accordion.js"></script>

</body>
</html>