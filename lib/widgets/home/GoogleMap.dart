import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:thikana_ki/configs/constants/google_map_constant.dart';
import 'package:thikana_ki/utils/location/current_location.dart';

class MyGoogleMap extends StatefulWidget {
  final double height;

  const MyGoogleMap({this.height});

  @override
  _MyGoogleMapState createState() => _MyGoogleMapState();
}

class _MyGoogleMapState extends State<MyGoogleMap> {
//  LocationData currentLocation;
//  Location location;
//  LocationData destinationLocation;

//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    getCurrentLocation();
//  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height,
      padding: EdgeInsets.only(bottom: 120),
      child: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        myLocationEnabled: true,
      ),
    );
  }
//
//  void updatePinOnMap() async {
//    // create a new CameraPosition instance
//    // every time the location changes, so the camera
//    // follows the pin as it moves with an animation
//    CameraPosition cPosition = CameraPosition(
//      zoom: CAMERA_ZOOM,
//      tilt: CAMERA_TILT,
//      bearing: CAMERA_BEARING,
//      target: LatLng(currentLocation.latitude, currentLocation.longitude),
//    );
//  }
//
//  void setInitialLocation() async {
//    // set the initial location by pulling the user's
//    // current location from the location's getLocation()
//    currentLocation = await location.getLocation();
//
//    // hard-coded destination for this example
//    destinationLocation = LocationData.fromMap({
//      "latitude": DEST_LOCATION.latitude,
//      "longitude": DEST_LOCATION.longitude
//    });
//  }
//
//  void getCurrentLocation() {
//    // create an instance of Location
//    location = new Location();
//    location.onLocationChanged().listen((LocationData cLoc) {
//      currentLocation = cLoc;
//      updatePinOnMap();
//    });
//  }
}
