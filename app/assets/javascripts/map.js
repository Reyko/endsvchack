$( document ).ready(function() {
   initialize();
});


function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(51.5072, 0.1275),
    zoom: 5,
    scrollwheel: false
  };
  var map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
}
google.maps.event.addDomListener(window, 'load', initialize);





