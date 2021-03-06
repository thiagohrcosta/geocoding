import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

import 'mapbox-gl/dist/mapbox-gl.css';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    // const element = document.createElement('div');
    // element.className = 'marker';
    // element.style.backgroundImage = `url('${marker.image_url}')`;
    // element.style.backgroundSize = 'contain';
    // element.style.width = '25px';
    // element.style.height = '25px';

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'

    });

  map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    mapboxgl: mapboxgl }));


  const markers = JSON.parse(mapElement.dataset.markers);
  // markers.forEach((marker) => {
  //   new mapboxgl.Marker()
  //     .setLngLat([ marker.lng, marker.lat ])
  //     .addTo(map);
  // });

  addMarkersToMap(map, markers);
  fitMapToMarkers(map, markers);

  };

};

export { initMapbox };
