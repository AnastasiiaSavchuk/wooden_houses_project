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
            <img src="../../image/2-Modum_8_sample_4/1_Header_MODUM_8.jpg" alt="" width="2560" height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/2-Modum_8_sample_4/2_Header_MODUM_8_Kueche.jpg" alt="" width="2560" height="720">
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
            <img src="../../image/6-Art_5_sample_4/1_Header_Luxushaus.jpg" alt="" width="2560" height="720">
        </div>
        <div class="start-photo">
            <img src="../../image/6-Art_5_sample_4/2_Header_ART_5_Luxushaus.jpg" alt="" width="2560" height="720">
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
            <img src="../../image/8-Art_3_sample_5/1_Header_HUF_Haus_ART_3_Koel.jpg" alt="" width="2560"
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
        <div class="left">
            <h2 class="line">${house.houseName} ${house.houseType}</h2>
            <h1>${house.info}</h1>
            <div class="socialmedia">
                <p class="but">
                    <a href="https://www.facebook.com/hufhaus/" target="_blank"><i class="fa fa-facebook"></i></a></p>
                <p class="but">
                    <a href="https://twitter.com/hufhaus?lang=en" target="_blank"><i class="fa fa-twitter"></i></a></p>
                <p class="but">
                    <a href="https://www.pinterest.com/search/pins/?q=HUF%20HAUS&rs=typed&term_meta[]=HUF%7Ctyped&term_meta[]=HAUS%7Ctyped"
                       target="_blank"><i class="fa fa-pinterest-p"></i></a></p>
                <p class="but"><a href="mailto:huf-dorf@huf-haus.com"><i class="fa fa-envelope"></i></a></p>
            </div>
        </div>
        <div class="right">
            <h2>${house.story1}</h2>
            <p>${house.story2}</p>
            <p>${house.story3}</p>
            <p>${house.story4}</p>
            <p>${house.story5}</p>
            <p>${house.story6}</p>
            <p>${house.story7}</p>
            <p>${house.story8}</p>
        </div>
    </div>

    <div id="info-2">
        <h1>More details about yhe house</h1>
        <div class="left">
            <p><span>House:</span> ${house.houseName}</p>
            <p><span>Dimensions:</span> ${house.dimensions}</p>
            <p><span>Total gross external area:</span> ${house.totalGrossExternalArea}</p>
        </div>
        <div class="right">
            <p><span>House footprint:</span> ${house.footprint}</p>
            <p><span>Roof pitch:</span> ${house.roofPitch}</p>
            <p><span>Features:</span> ${house.feature1}</p>
        </div>
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
         style="background: url('../../image/4-Art_3_sample_2/middle_HUF.jpg') no-repeat fixed center">
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
    <div id="info-3">
        <h2>${house.purpose}</h2>
        <p>${house.purposeInfo1}</p>
        <p>${house.purposeInfo2}</p>
        <p>${house.purposeInfo3}</p>
    </div>

    <c:if test="${house.id == 1}">
        <div class="floorplan">
            <h1>Floorplan</h1>
            <div>
                <h2>Ground floor</h2>
                <img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow_floorplan_ground_floor.jpg" alt="">
            </div>
        </div>
    </c:if>
    <c:if test="${house.id == 2}">
        <div class="floorplan">
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
        <div class="floorplan">
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
        <div class="floorplan">
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
        <div class="floorplan">
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
        <div class="floorplan">
            <h1>Floorplans</h1>
            <div>
                <h2>Ground floor</h2>
                <img src="../../image/6-Art_5_sample_4/Art_5_sample_4_ground_floor.jpg" alt="">
            </div>
            <div>
                <h2>First floor</h2>
                <img src="../../image/6-Art_5_sample_4/Art_5_sample_4_first_floor.jpg" alt="">
            </div>
        </div>
    </c:if>
    <c:if test="${house.id == 7}">
        <div class="floorplan">
            <h1>Floorplans</h1>
            <div>
                <h2>Ground floor</h2>
                <img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_ground_floor.jpg" alt="">
            </div>
            <div>
                <h2>First floor</h2>
                <img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_first_floor.jpg" alt="">
            </div>
        </div>
    </c:if>
    <c:if test="${house.id == 8}">
        <div class="floorplan">
            <h1>Floorplans</h1>
            <div>
                <h2>Ground floor</h2>
                <img src="../../image/8-Art_3_sample_5/ART_3_sample_5_ground_floor.jpg" alt="">
            </div>
            <div>
                <h2>First floor</h2>
                <img src="../../image/8-Art_3_sample_5/ART_3_sample_5_first_floor.jpg" alt="">
            </div>
            <div>
                <h2>Basement</h2>
                <img src="../../image/8-Art_3_sample_5/ART_3_sample_5_basement.jpg" alt="">
            </div>
        </div>
    </c:if>
    <c:if test="${house.id == 9}">
        <div class="floorplan">
            <h1>Floorplan</h1>
            <div>
                <h2>Ground floor</h2>
                <img src="../../image/9-extention_sample_1/Extension_sample_1_ground_floor.jpg" alt="">
            </div>
        </div>
    </c:if>
    <c:if test="${house.id == 10}">
        <div class="floorplan">
            <h1>Floorplan</h1>
            <div>
                <h2>Ground floor</h2>
                <img src="../../image/10-Art_Bungalow_sample_3/Art_Bungalow_sample_3_ground_floor.jpg" alt="">
            </div>
        </div>
    </c:if>
    <c:if test="${house.id == 11}">
        <div class="floorplan">
            <h1>Floorplans</h1>
            <div>
                <h2>Ground floor</h2>
                <img src="../../image/11-Art_5_sample_6/Art_5_sample_6_ground_floor.jpg" alt="">
            </div>
            <div>
                <h2>Basement</h2>
                <img src="../../image/11-Art_5_sample_6/Art_5_sample_6_basement.jpg" alt="">
            </div>
        </div>
    </c:if>
</div>

<div class="photo">
    <c:if test="${house.id == 1}">
        <div class="mini"><img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__1.jpg" alt=""></div>
        <div class="mini"><img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__4.jpg" alt=""></div>
        <div class="big"><img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__5.jpg" alt=""></div>
        <div class="big"><img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__6_.jpg" alt=""></div>
        <div class="mini"><img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__7.jpg" alt=""></div>
        <div class="mini"><img src="../../image/1-Bungalow_sample_7/MODUM_Bungalow__8.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 2}">
        <div class="big"><img src="../../image/2-Modum_8_sample_4/1_Header_MODUM_8.jpg" alt=""></div>
        <div class="big"><img src="../../image/2-Modum_8_sample_4/2_Header_MODUM_8_Kueche.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_1.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_6.jpg" alt=""></div>
        <div class="big"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_7.jpg" alt=""></div>
        <div class="big"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_6.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_9.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_10.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_11.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/middle_MODUM_8_sample_4_12.jpg" alt=""></div>
        <div class="mini"><img src="../../image/2-Modum_8_sample_4/MODUM_8_sample_4_13.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 3}">
        <div class="big"><img src="../../image/3-Modum_7_sample_2/1_Header_HUF_Dorf.jpg" alt=""></div>
        <div class="big"><img src="../../image/3-Modum_7_sample_2/2_Header_HUF_Dorf.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_1.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_3.jpg" alt=""></div>
        <div class="big"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_4.jpg" alt=""></div>
        <div class="big"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/midle_modum7-1.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_7.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_8.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_9.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_10.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_11.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_12.jpg" alt=""></div>
        <div class="mini"><img src="../../image/3-Modum_7_sample_2/MODUM_7_sample_2_13.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 4}">
        <div class="big"><img src="../../image/4-Art_3_sample_2/1_Header_HUF_Haus_ART_3_mit_Elektrotankstelle.jpg"
                              alt=""></div>
        <div class="big"><img src="../../image/4-Art_3_sample_2/2_Header_HUF_Haus_ART_3_mit_Elektrotankstelle.jpg"
                              alt=""></div>
        <div class="big"><img src="../../image/4-Art_3_sample_2/middle_HUF.jpg" alt=""></div>
        <div class="big"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_1.jpg" alt=""></div>
        <div class="big"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_4.jpg" alt=""></div>
        <div class="mini"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_6.jpg" alt=""></div>
        <div class="mini"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_7.jpg" alt=""></div>
        <div class="mini"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_8.jpg" alt=""></div>
        <div class="mini"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_9.jpg" alt=""></div>
        <div class="mini"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_10.jpg" alt=""></div>
        <div class="big"><img src="../../image/4-Art_3_sample_2/Art_3_sample_2_11.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 5}">
        <div class="big"><img src="../../image/5-Modum_10_sample_1/1_Header_MODUM_10er_1.jpg" alt=""></div>
        <div class="big"><img src="../../image/5-Modum_10_sample_1/2_Header_MODUM_10er_3.jpg" alt=""></div>
        <div class="big"><img src="../../image/5-Modum_10_sample_1/middle_MODUM_10_sample_1_1.jpg" alt=""></div>
        <div class="mini"><img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_4.jpg" alt=""></div>
        <div class="mini"><img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_6.jpg" alt=""></div>
        <div class="mini"><img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_7.jpg" alt=""></div>
        <div class="mini"><img src="../../image/5-Modum_10_sample_1/MODUM_10_sample_1_8.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 6}">
        <div class="big"><img src="../../image/6-Art_5_sample_4/1_Header_Luxushaus.jpg" alt=""></div>
        <div class="big"><img src="../../image/6-Art_5_sample_4/2_Header_ART_5_Luxushaus.jpg" alt=""></div>
        <div class="big"><img src="../../image/6-Art_5_sample_4/middle_HUF_Badezimmer_mit_freistehender_Badewanne.jpg"
                              alt=""></div>
        <div class="mini"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_1.jpg" alt=""></div>
        <div class="big"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_2.jpg" alt=""></div>
        <div class="big"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_4.jpg" alt=""></div>
        <div class="mini"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_6.jpg" alt=""></div>
        <div class="mini"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_7.jpg" alt=""></div>
        <div class="mini"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_8.jpg" alt=""></div>
        <div class="mini"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_9.jpg" alt=""></div>
        <div class="mini"><img src="../../image/6-Art_5_sample_4/Art_5_sample_4_10.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 7}">
        <div class="big"><img src="../../image/7-Modum_15_sample_8/2_Header_Flachdach_UK.jpg" alt=""></div>
        <div class="mini"><img src="../../image/7-Modum_15_sample_8/1_Header_MODUM_15_sample_8_1.jpg" alt=""></div>
        <div class="big"><img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_2.jpg" alt=""></div>
        <div class="big"><img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/7-Modum_15_sample_8/middle_MODUM_15_sample_8_4.jpg" alt=""></div>
        <div class="mini"><img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_6.jpg" alt=""></div>
        <div class="mini"><img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_7.jpg" alt=""></div>
        <div class="mini"><img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_8.jpg" alt=""></div>
        <div class="mini"><img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_9.jpg" alt=""></div>
        <div class="mini"><img src="../../image/7-Modum_15_sample_8/MODUM_15_sample_8_10.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 8}">
        <div class="big"><img src="../../image/8-Art_3_sample_5/1_Header_HUF_Haus_ART_3_Koel.jpg" alt=""></div>
        <div class="big"><img src="../../image/8-Art_3_sample_5/middle_Traumhaus_von_HUF_HAUS_Interior__6.jpg" alt="">
        </div>
        <div class="mini"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_1.jpg" alt=""></div>
        <div class="big"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_2.jpg" alt=""></div>
        <div class="big"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_4.jpg" alt=""></div>
        <div class="mini"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/8-Art_3_sample_5/2_header_ART_3_sample_5_6.jpg" alt=""></div>
        <div class="mini"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_7.jpg" alt=""></div>
        <div class="mini"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_8.jpg" alt=""></div>
        <div class="mini"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_9.jpg" alt=""></div>
        <div class="mini"><img src="../../image/8-Art_3_sample_5/ART_3_sample_5_10.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 9}">
        <div class="big"><img src="../../image/9-extention_sample_1/2_Header_Anbau_Beispiel.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/Extension_sample_1_1.jpg" alt=""></div>
        <div class="big"><img src="../../image/9-extention_sample_1/1_header_Extension_sample_1_2.jpg" alt=""></div>
        <div class="big"><img src="../../image/9-extention_sample_1/Extension_sample_1_3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/Extension_sample_1_4.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/Extension_sample_1_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/Extension_sample_1_6.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/middle_Extension_sample_1_7.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/Extension_sample_1_8.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/Extension_sample_1_9.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/Extension_sample_1_10.jpg" alt=""></div>
        <div class="mini"><img src="../../image/9-extention_sample_1/Extension_sample_1_11.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 10}">
        <div class="big"><img src="../../image/10-Art_Bungalow_sample_3/middle_HUF_Haus_weiss_OEsterreich__12.jpg"
                              alt=""></div>
        <div class="big"><img src="../../image/10-Art_Bungalow_sample_3/Art_Bungalow_sample_3_1.jpg" alt=""></div>
        <div class="big"><img src="../../image/10-Art_Bungalow_sample_3/Art_Bungalow_sample_3_2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/10-Art_Bungalow_sample_3/Art_Bungalow_sample_3_3.jpg" alt=""></div>
    </c:if>
    <c:if test="${house.id == 11}">
        <div class="big"><img src="../../image/11-Art_5_sample_6/2_Header_HUF_Bungalow__2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/11-Art_5_sample_6/Art_5_sample_6_1.jpg" alt=""></div>
        <div class="mini"><img src="../../image/11-Art_5_sample_6/1_header_Art_5_sample_6_2.jpg" alt=""></div>
        <div class="mini"><img src="../../image/11-Art_5_sample_6/Art_5_sample_6_3.jpg" alt=""></div>
        <div class="mini"><img src="../../image/11-Art_5_sample_6/Art_5_sample_6_4.jpg" alt=""></div>
        <div class="mini"><img src="../../image/11-Art_5_sample_6/Art_5_sample_6_5.jpg" alt=""></div>
        <div class="mini"><img src="../../image/11-Art_5_sample_6/middle_Art_5_sample_6_6.jpg" alt=""></div>
    </c:if>
</div>

<script src="../../js/slideShow.js"></script>

</body>
</html>