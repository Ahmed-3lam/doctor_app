import 'package:doctor_app/Models/Place.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class MapScreen extends StatefulWidget {
  final PlaceLocation initialLocation;
  final bool isSelecting;

  MapScreen({
    this.initialLocation =
        const PlaceLocation(latitude: 30.44918226407256, longitude: 30.883219202085694),
    this.isSelecting = false,
  });


  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    Set<Marker> _createMarker() {
      return {
        Marker(
          markerId: MarkerId("marker_2"),
          position: LatLng(widget.initialLocation.latitude, widget.initialLocation.longitude),
        ),
      };
    }


    return Scaffold(


      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            widget.initialLocation.latitude,
            widget.initialLocation.longitude,
          ),
          zoom: 16,
        ),
        markers: _createMarker(),
      ),
    );
  }
}
