import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location;
import 'package:thikana_ki/configs/constants/google_map_constant.dart';
import 'package:thikana_ki/models/model_location.dart';

Position position;
double lat, long;
LocationModel locationModel;

Future<void> getCurrentLocation() async {
  position = await Geolocator()
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  lat = position.latitude;
  long = position.longitude;
  print('\n\nMy Location: $position');
}


location.LocationData currentLocation;

CameraPosition initialCameraPosition = currentLocation != null
    ? CameraPosition(
        target: LatLng(currentLocation.latitude, currentLocation.longitude),
        zoom: CAMERA_ZOOM,
//        tilt: CAMERA_TILT,
//        bearing: CAMERA_BEARING
      )
    : CameraPosition(
        zoom: CAMERA_ZOOM,
//        tilt: CAMERA_TILT,
//        bearing: CAMERA_BEARING,
        target: SOURCE_LOCATION,
      );

class LocationManager {
  static LatLng _initialPosition;

// ! TO GET THE USERS LOCATION
  void getUserLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemark = await Geolocator()
        .placemarkFromCoordinates(position.latitude, position.longitude);
    _initialPosition = LatLng(position.latitude, position.longitude);
    print("initial position is : ${_initialPosition.toString()}");
  }
}
