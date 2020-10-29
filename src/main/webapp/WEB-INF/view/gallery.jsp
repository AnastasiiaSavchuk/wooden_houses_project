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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<h1 style="margin: 70px">My First Google Map</h1>

<style>
    #map {
        width: 100%;
        height: 600px;
    }
</style>

<div id="map"></div>

<script>
    function initMap() {
        var element = document.getElementById('map');
        var options = {
            zoom: 5,
            center: {lat: 49.806496, lng: 24.059695},
        };

        var myMap = new google.maps.Map(element, options);

        var markers = [
            {
                coordinates: {lat: 49.806496, lng: 24.059695},
                info: '<h3>Tov"Ekotreyd Zakhid"</h3><br><img src="https://placehold.it/200x150"><br><p>????????</p>'
            }
        ];

        for (var i = 0; i < markers.length; i++) {
            addMarker(markers[i]);
        }

        function addMarker(properties) {
            var marker = new google.maps.Marker({
                position: properties.coordinates,
                map: myMap
            });

            if (properties.image) {
                marker.setIcon(properties.image);
            }

            if (properties.info) {
                var InfoWindow = new google.maps.InfoWindow({
                    content: properties.info
                });

                marker.addListener('click', function () {
                    InfoWindow.open(myMap, marker);
                });
            }
        }
    }
</script>

<script async defer
        src="https://maps.googleapis.com/maps/api/staticmap?key=YOUR_API_KEY&center=49.80641951879607,24.060034550000008&zoom=18&format=png&maptype=roadmap&size=480x360">
</script>

<c:choose>
    <c:when test="${mode == 'GALLERY_VIEW'}">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Id</th>
                <th>image</th>
                <th>imageName</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="house" items="${houseImages}">
                <tr>
                    <td>${house.id}</td>
                    <td>${house.image}</td>
                    <td>${house.imageName}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>
</c:choose>
</body>
</html>