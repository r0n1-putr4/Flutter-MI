import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SingleMapPage extends StatefulWidget {
  const SingleMapPage({super.key});

  @override
  State<SingleMapPage> createState() => _SingleMapPageState();
}

class _SingleMapPageState extends State<SingleMapPage> {
  final koordinat = LatLng(-0.9406786430307693, 100.43324888237404);

  Set<Marker> marker = {};
  Set<Marker> _singleMarker() {
    marker.add(Marker(markerId: MarkerId("lokasi01"), position: koordinat,infoWindow: InfoWindow(title: "Cupak Tangah",snippet: "Padang, Sumatera Barat")));
    return marker;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: koordinat, zoom: 13),
        markers: _singleMarker(),
      ),
    );
  }
}
