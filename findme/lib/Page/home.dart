import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(13.7650836, 100.5379664),
          zoom: 16,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        myLocationEnabled: true,
      ),
    );
  }
}
