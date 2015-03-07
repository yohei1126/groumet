your_loc = {
    lat: 35.689185
    lng: 139.691648
}
mar1_loc = {
    lat: 35.687716
    lng: 139.692068
}
mar2_loc = {
    lat: 35.691248
    lng: 139.691281
}
init = ->
  map1 = new GMaps(
        div: '#map1'
        zoom: 15
        lat: your_loc.lat
        lng: your_loc.lng
  )
  map1.addMarker(
        lat: your_loc.lat
        lng: your_loc.lng
  )
  map1.addMarker(
        icon  : 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
        lat: mar1_loc.lat
        lng: mar1_loc.lng
  )
  map2 = new GMaps(
        div: '#map2'
        zoom: 15
        lat: your_loc.lat
        lng: your_loc.lng
  )
  map2.addMarker(
        lat: your_loc.lat
        lng: your_loc.lng
  )
  map2.addMarker(
        icon  : 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
        lat: mar2_loc.lat
        lng: mar2_loc.lng
  )

$(document).ready(init)