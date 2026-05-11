import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SingleMapPage extends StatefulWidget {
  const SingleMapPage({super.key});

  @override
  State<SingleMapPage> createState() => _SingleMapPageState();
}

class _SingleMapPageState extends State<SingleMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(-0.9472813143938821, 100.36326840320734),
              zoom: 14,
            ),
          ),
          Positioned(
            top: 50,
            right: 10,
            child: Material(
              color: Colors.transparent,
              child: PopupMenuButton(
                onSelected: (val) {},
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: "gambar",
                    child: Text("Menampilkan Gambar"),
                  ),
                  PopupMenuItem(value: "appbar", child: Text("App Bar")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
