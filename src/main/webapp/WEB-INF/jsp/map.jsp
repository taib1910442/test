<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.js"></script>
    <link type="text/css" rel="stylesheet" href="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.css"/>
    <script type="text/javascript">
        window.onload = function() {
            L.mapquest.key = 'RdM6WMcd8zQQIuSoKXU4cjDsA5ju7qPI';

            var map = L.mapquest.map('map', {
                center: [${location.latitude}, ${location.longitude}],
                layers: L.mapquest.tileLayer('map'),
                zoom: 13
            });

            L.marker([${location.latitude}, ${location.longitude}], {
                icon: L.mapquest.icons.marker(),
                draggable: false
            }).bindPopup('${location.name}').addTo(map);

            let directionsControl = L.mapquest.directionsControl({
                directionsLayer: {
                    startMarker: {
                        draggable: true,
                        icon: 'marker-start',
                        iconOptions: {},
                    },
                    endMarker: {
                        draggable: false,
                        icon: 'marker-end',
                        iconOptions: {},
                    },
                },
                endInput: {
                    disabled: true,
                    placeholderText: '${location.name}',
                    geolocation: {
                        enabled: false
                    }
                },
                reverseButton: {
                    enabled: false,
                },
                addDestinationButton: {
                    enabled: false
                }
            }).addTo(map);

            directionsControl.setFirstDestination({
                latLng: {
                    lat: ${location.latitude},
                    lng: ${location.longitude}
                }
            });
            map.addControl(L.mapquest.trafficControl());
        }
    </script>
</head>

<body style="border: 0; margin: 0;">
<div id="map" style="width: 100%; height: 100vh;"></div>
</body>
</html>

<%--

</head>
<body>
<jsp:include page="contact.jsp"/>
<div id="map" style="height: 400px;"></div>
<label for="route-options">Bạn sẽ du lịch bằng phương tiện gì?</label>
<select id="route-options" onchange="changeRoute()">
    <option value="DRIVING">Lựa chọn đường lái xe</option>
    <option value="WALKING">Lựa chọn đường đi bộ</option>
    <!-- Thêm các lựa chọn đường khác nếu cần -->
</select>
<div id="route-info"></div>
</body>--%>

