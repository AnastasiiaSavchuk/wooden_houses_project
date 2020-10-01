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

<div id="main">
    <c:choose>
        <c:when test="${mode == 'HOUSE_VIEW'}">
            <div>
                <div class="header-text">
                    <p class="header-p">Be inspired by our dream house</p>
                </div>
                <img src="../../image/house_header_ART_5.jpg" width="100%" height="580" alt="">
            </div>
            <div id="houses">
                <c:forEach var="house" items="${house}">
                    <c:if test="${house.id == 1}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__2.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 2}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 3}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_3.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 4}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/4-Art_3_sample_2/Art_3_sample_2_2.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 5}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 6}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/6-Art_5_sample_4/Art_5_sample_4_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 7}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 8}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/8-Art_3_sample_5/ART_3_sample_5_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 9}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/9-extention_sample_1/Extension_sample_1_4.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 10}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/10-Art_Bungalow_sample_3/Art_Bungalow_sample_3_1.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${house.id == 11}">
                        <div class="allHouse">
                            <div>
                                <img src="../../image/11-Art_5_sample_6/Art_5_sample_6_2.jpg" alt="">
                            </div>
                            <div class="shortInfo">
                                <h2><b>${house.houseName}</b></h2>
                                <h4>${house.houseType}</h4>
                                <div><p>${house.feature1}</p></div>
                                <div><p>${house.feature2}</p></div>
                                <div><p>${house.roofPitch}</p></div>
                                <div><p>${house.footprint}</p></div>
                            </div>
                            <div>
                                <a href="house/${house.id}">
                                    <button>To the project</button>
                                </a>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </c:when>
    </c:choose>
    <div>
        <h1>Be inspired by our HUF dream homes</h1>
        <div>
            <ul>
                <li>
                    <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.huf-haus.com%2Fen-uk%2Fdream-house%2F"><i
                            class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li>
                    <a href="https://twitter.com/intent/tweet?text=%E2%96%B7%20Dream%20House%202020%20%7C%20HUF%20Houses%20at%20a%20glance%20%7C%20HUF%20HAUS&url=https%3A%2F%2Fwww.huf-haus.com%2Fen-uk%2Fdream-house%2F"><i
                            class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li>
                    <a href="whatsapp://send?text=%E2%96%B7%20Dream%20House%202020%20%7C%20HUF%20Houses%20at%20a%20glance%20%7C%20HUF%20HAUS%20https%3A%2F%2Fwww.huf-haus.com%2Fen-uk%2Fdream-house%2F>"><i
                            class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                <li>
                    <a href="https://www.pinterest.com/pin/create/link/?url=https%3A%2F%2Fwww.huf-haus.com%2Fen-uk%2Fdream-house%2F&media=&description=%E2%96%B7%20Dream%20House%202020%20%7C%20HUF%20Houses%20at%20a%20glance%20%7C%20HUF%20HAUS"><i
                            class="fa fa-pinterest-p"></i></a></li>
                <li>
                    <a href="mailto:?subject=%E2%96%B7%20Dream%20House%202020%20%7C%20HUF%20Houses%20at%20a%20glance%20%7C%20HUF%20HAUS&body=https%3A%2F%2Fwww.huf-haus.com%2Fen-uk%2Fdream-house%2F"><i
                            class="fa fa-envelope"></i></a></li>
            </ul>
        </div>
    </div>
    <div>
        <h3>Dream homes at a glance</h3>
        <p>You have already found your desired plot and look for the most suitable house size? We would like to take
            this opportunity to present you several construction projects in different sizes per square meter.
            Experience the various options that a HUF house offer you!</p>
        <p>Our examples serve as a first idea - every HUF house is unique; designed to meet all personal requirements
            and positioned perfectly within the environment and topography of a plot.</p>
    </div>
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