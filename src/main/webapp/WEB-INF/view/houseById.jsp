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

<c:if test="${house.id == 1}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__1.jpg" alt="" width="2560" height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__4.jpg" alt="" width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 2}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/2-Modum_8_sample_4/1_Header_MODUM_8_Fachwerkhaus_HUF_HAUS.jpg" alt="" width="2560"
                 height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/2-Modum_8_sample_4/2_Header_MODUM_8_Kueche_Fachwerkhaus_HUF_HAUS.jpg" alt=""
                 width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 3}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/3-Modum_7_sample_2/1_Header_HUF_Dorf.jpg" alt="" width="2560" height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/3-Modum_7_sample_2/2_Header_HUF_Dorf.jpg" alt="" width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 4}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/4-Art_3_sample_2/1_Header_HUF_Haus_ART_3_mit_Elektrotankstelle.jpg" alt=""
                 width="2560" height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/4-Art_3_sample_2/2_Header_HUF_Haus_ART_3_mit_Elektrotankstelle.jpg" alt=""
                 width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 5}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/5-Modum_10_sample_1/1_Header_MODUM_10er_1.jpg" alt="" width="2560" height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/5-Modum_10_sample_1/2_Header_MODUM_10er_3.jpg" alt="" width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 6}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/6-Art_5_sample_4/1_Header_Luxushaus_HUF_HAUS.jpg.jpg" alt="" width="2560"
                 height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/6-Art_5_sample_4/2_Header_ART_xu5_Lushaus.jpg" alt="" width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 7}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/7-Modum_15_sample_8/1_Header_MODUM_15_sample_8_1.jpg" alt="" width="2560"
                 height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/7-Modum_15_sample_8/2_Header_Flachdach_UK.jpg" alt="" width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 8}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/8-Art_3_sample_5/1_Header_HUF_Haus_ART_3_Koel_34f031ecd3.jpg" alt="" width="2560"
                 height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/8-Art_3_sample_5/2_header_ART_3_sample_5_6.jpg" alt="" width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 9}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/9-extention_sample_1/1_header_Extension_sample_1_2.jpg" alt="" width="2560"
                 height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/9-extention_sample_1/2_Header_Anbau_Beispiel.jpg" alt="" width="2560" height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 10}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/10-Art_Bungalow_sample_3/Art_Bungalow_sample_3_1.jpg" alt="" width="2560"
                 height="720">
        </div>
    </div>
</c:if>
<c:if test="${house.id == 11}">
    <div class="slideshow">
        <div class="start-photo">
            <img src="../../image/11-Art_5_sample_6/1_header_Art_5_sample_6_2.jpg" alt="" width="2560" height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/11-Art_5_sample_6/2_Header_HUF_Bungalow__2.jpg" alt="" width="2560" height="720">
        </div>
    </div>
</c:if>
<div style="text-align: center; margin-top: -2.5%;">
    <button class="dot" onclick="currentSlide(1)"></button>
    <button class="dot" onclick="currentSlide(2)"></button>
</div>

<div class="main">
    <div id="info-1">
        <h2>${house.houseName} ${house.houseType}</h2>
        <h1>${house.info}</h1>
    </div>
    <div id="info-2">
        <p>${house.story1}</p>
        <p>${house.story2}</p>
        <p>${house.story3}</p>
        <p>${house.story4}</p>
        <p>${house.story5}</p>
        <p>${house.story6}</p>
        <p>${house.story7}</p>
        <p>${house.story8}</p>
    </div>
    <div id="info-3">
        <h1>More details about yhe house</h1>
        <p>House: ${house.houseName}</p>
        <p>Dimensions: ${house.dimensions}</p>
        <p>Total gross external area: ${house.totalGrossExternalArea}</p>
        <p>House footprint: ${house.footprint}</p>
        <p>Roof pitch: ${house.roofPitch}</p>
        <p>Features: ${house.feature1}</p>
    </div>
</div>

<c:if test="${house.id == 1}">
    <div class="middle-photo"
         style="background: url('../../image/1-Bungalow_sample_7/MODUM_Bungalow__3.jpg') no-repeat fixed center">
        <h1>Enjoy the view</h1>
    </div>
</c:if>
<c:if test="${house.id == 2}">
    <div class="middle-photo"
         style="background: url('../../image/2-Modum_8_sample_4/middle_MODUM_8_sample_4_12.jpg') no-repeat fixed center">
        <h1>Wellness with view</h1>
    </div>
</c:if>
<c:if test="${house.id == 3}">
    <div class="middle-photo"
         style="background: url('../../image/3-Modum_7_sample_2/midle_modum7-1.jpg') no-repeat fixed center">
        <h1>A new way of thinking</h1>
    </div>
</c:if>
<c:if test="${house.id == 4}">
    <div class="middle-photo"
         style="background: url('../../image/4-Art_3_sample_2/middle_HUF_Fachwerkhaus_mit_Elektrotankstelle_und_PV-Anlage__18__57b21dc033.jpg') no-repeat fixed center">
        <h1>Family time</h1>
    </div>
</c:if>
<c:if test="${house.id == 5}">
    <div class="middle-photo"
         style="background: url('../../image/5-Modum_10_sample_1/middle_MODUM_10_sample_1_1.jpg') no-repeat fixed center">
        <h1>Wellness Oasis</h1>
    </div>
</c:if>
<c:if test="${house.id == 6}">
    <div class="middle-photo"
         style="background: url('../../image/6-Art_5_sample_4/middle_HUF_Badezimmer_mit_freistehender_Badewanne.jpg') no-repeat fixed center">
        <h1>Box seat</h1>
    </div>
</c:if>
<c:if test="${house.id == 7}">
    <div class="middle-photo"
         style="background: url('../../image/7-Modum_15_sample_8/middle_MODUM_15_sample_8_4.jpg') no-repeat fixed center">
        <h1>Floating timber frame house</h1>
    </div>
</c:if>
<c:if test="${house.id == 8}">
    <div class="middle-photo"
         style="background: url('../../image/8-Art_3_sample_5/middle_Traumhaus_von_HUF_HAUS_Interior__6.jpg') no-repeat fixed center">
        <h1>Perfection in detail</h1>
    </div>
</c:if>
<c:if test="${house.id == 9}">
    <div class="middle-photo"
         style="background: url('../../image/9-extention_sample_1/middle_Extension_sample_1_7.jpg') no-repeat fixed center">
        <h1>Love at first sight</h1>
    </div>
</c:if>
<c:if test="${house.id == 10}">
    <div class="middle-photo"
         style="background: url('../../image/10-Art_Bungalow_sample_3/middle_HUF_Haus_weiss_OEsterreich__12.jpg') no-repeat fixed center">
        <h1>Barrier-free entrance</h1>
    </div>
</c:if>
<c:if test="${house.id == 11}">
    <div class="middle-photo"
         style="background: url('../../image/11-Art_5_sample_6/middle_Art_5_sample_6_6.jpg') no-repeat fixed center">
        <h1>Accessible living spase</h1>
    </div>
</c:if>

<div class="main">
    <div id="info-4">
        <p>${house.purpose}</p>
        <p>${house.purposeInfo1}</p>
        <p>${house.purposeInfo2}</p>
        <p>${house.purposeInfo3}</p>
    </div>

    <div id="info-5">
        <h1>Floorplans</h1>
        <div>
            <h2>Ground Floor</h2>
        </div>
    </div>

    <div>
        <c:if test="${house.id == 1}">
            <div id="info-5">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow_floorplan_ground_floor.jpg" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 2}">
            <div id="info-5">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_ground_floor.jpg" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_first_floor.jpg" alt="">
                </div>
                <div>
                    <h2>Basement</h2>
                    <img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_basement.jpg" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 3}">
            <div id="info-6">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_ground_floor.jpg" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_first_floor.jpg" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 4}">
            <div id="info-7">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/4-Art_3_sample_2/Art_3_sample_2_ground_floor.jpg" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/4-Art_3_sample_2/Art_3_sample_2_first_floor.jpg" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 5}">
            <div id="info-8">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_ground_flor.jpg" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_first_flor.jpg" alt="">
                </div>
                <div>
                    <h2>Basement</h2>
                    <img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_basement.jpg" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 6}">
            <div id="info-5">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 7}">
            <div id="info-5">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>Basement</h2>
                    <img src="../../image/" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 8}">
            <div id="info-5">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>Basement</h2>
                    <img src="../../image/" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 9}">
            <div id="info-5">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>Basement</h2>
                    <img src="../../image/" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 10}">
            <div id="info-5">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>Basement</h2>
                    <img src="../../image/" alt="">
                </div>
            </div>
        </c:if>
        <c:if test="${house.id == 11}">
            <div id="info-5">
                <h1>Floorplans</h1>
                <div>
                    <h2>Ground floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>First floor</h2>
                    <img src="../../image/" alt="">
                </div>
                <div>
                    <h2>Basement</h2>
                    <img src="../../image/" alt="">
                </div>
            </div>
        </c:if>
    </div>

</div>

<div>
    <c:if test="${house.id == 1}">

    </c:if>
    <c:if test="${house.id == 2}">

    </c:if>
    <c:if test="${house.id == 3}">

    </c:if>
    <c:if test="${house.id == 4}">

    </c:if>
    <c:if test="${house.id == 5}">

    </c:if>
    <c:if test="${house.id == 6}">

    </c:if>
    <c:if test="${house.id == 7}">

    </c:if>
    <c:if test="${house.id == 8}">

    </c:if>
    <c:if test="${house.id == 9}">

    </c:if>
    <c:if test="${house.id == 10}">

    </c:if>
    <c:if test="${house.id == 11}">

    </c:if>
</div>

<script src="../../js/slideShow.js"></script>

</body>
</html>