<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Dream house</title>
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
    <link rel="stylesheet" href="../../css/house.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<c:choose>
    <c:when test="${mode == 'HOUSE_VIEW'}">
        <div>
            <div class="header-text">
                <p class="header-p">Be inspired by our dream houses</p>
            </div>
            <img src="../../image/house_header_ART_5.jpg" width="100%" height="555" alt="">
        </div>
        <div id="main">
            <c:forEach var="house" items="${house}">
                <c:if test="${house.id == 1}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__2.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 2}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_1.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 3}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_3.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 4}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/4-Art_3_sample_2/Art_3_sample_2_2.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 5}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_1.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 6}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/6-Art_5_sample_4/Art_5_sample_4_1.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 7}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_1.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 8}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/8-Art_3_sample_5/ART_3_sample_5_1.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 9}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/9-extention_sample_1/Extension_sample_1_4.jpg" width="345"
                                 height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 10}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/10-Art_Bungalow_sample_3/Art_Bungalow_sample_3_1.jpg" width="345"
                                 height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h2>${house.type}</h2>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${house.id == 11}">
                    <div class="allHouse">
                        <div>
                            <img src="../../image/11-Art_5_sample_6/Art_5_sample_6_2.jpg" width="345" height="230"
                                 alt="">
                        </div>
                        <div class="shortInfo">
                            <h2>${house.house}</h2>
                            <h3>${house.type}</h3>
                            <div><p>${house.feature1}</p></div>
                            <div><p>${house.feature2}</p></div>
                            <div><p>${house.roofPitch}</p></div>
                            <div><p>${house.houseFootprint}</p></div>
                            <div>
                                <button><a href="house/${house.id}">To the project</a></button>
                            </div>
                        </div>
                    </div>
                </c:if>

            </c:forEach>
        </div>
        <%--<c:forEach var="house" items="${house}">
                        <td>${house.id}</td>
                        <td>${house.house}</td>
                        <td>${house.type}</td>
                        <td>${house.info}</td>
                        <td>${house.story1}</td>
                        <td>${house.story2}</td>
                        <td>${house.story3}</td>
                        <td>${house.story4}</td>
                        <td>${house.story5}</td>
                        <td>${house.story6}</td>
                        <td>${house.story7}</td>
                        <td>${house.story8}</td>
                        <td>${house.dimensions}</td>
                        <td>${house.houseFootprint}</td>
                        <td>${house.totalGrossExternalArea}</td>
                        <td>${house.roofPitch}</td>
                        <td>${house.feature1}</td>
                        <td>${house.feature2}</td>
                        <td>${house.purpose}</td>
                        <td>${house.purposeInfo1}</td>
                        <td>${house.purposeInfo2}</td>
                        <td>${house.purposeInfo3}</td>
                </c:forEach>--%>
    </c:when>
</c:choose>
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

</body>
</html>