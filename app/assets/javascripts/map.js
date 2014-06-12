$( document ).ready(function() {
   initialize();
});


function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(71.1333, 27.7000),
    zoom: 3,
    scrollwheel: false
  };
  var map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
}
google.maps.event.addDomListener(window, 'load', initialize);

