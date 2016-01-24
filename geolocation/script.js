/**
 Created by:
 Aaron R. Wilson
 Full Sail University
 Networks and Server Structures
 201601-01
 Bash Assignment
 1/18/16
 **/

window.onload = function() {

    // Check to see if the browser supports the GeoLocation API.
    if (navigator.geolocation) {

    } else {
        // Print out a message to the user.
        document.write('Your browser does not support GeoLocation');
    }

    // Get the location
    navigator.geolocation.getCurrentPosition(function(pos) {

    });

    var lat = pos.coords.latitude;
    var lon = pos.coords.longitude;

    // Show the map
    showMap(lat, lon);

    // Show the user's position on a Google map.
    function showMap(lat, lon) {

        // Create a LatLng object with the GPS coordinates.
        var myLatLng = new google.maps.LatLng(lat, lon);

        // Create the Map Options
        var mapOptions = {
            zoom: 8,
            center: myLatLng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        // Generate the Map
        var map = new google.maps.Map(document.getElementById('map'), mapOptions);

        // Add a Marker to the Map
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'Found you!'
        });

    }

};