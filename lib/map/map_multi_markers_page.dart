import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMultiMarkersPage extends StatefulWidget {
  const MapMultiMarkersPage({super.key});

  @override
  State<MapMultiMarkersPage> createState() => _MapMultiMarkersPageState();
}

class _MapMultiMarkersPageState extends State<MapMultiMarkersPage> {
  final List<Map<String, dynamic>> listHotel = [
    {
      "markerId": "hotel01",
      "title": "Townhouse Oak Polamas Residence",
      "snippet": "Polamas Residence Syariah",
      "koordinat": LatLng(-0.9352069486260919, 100.37617549457364),
    },
    {
      "markerId": "hotel02",
      "title": "Daima Gardenstay",
      "snippet": "Padang",
      "koordinat": LatLng(-0.9371808635953277, 100.37840744905716),
    },
    {
      "markerId": "hotel03",
      "title": "RedDoorz Syariah @ Jalan Andalas Padang",
      "snippet": "Aisya Hasbi GuestHouse",
      "koordinat": LatLng(-0.9406138203099994, 100.38089703116098),
    },
    {
      "markerId": "hotel04",
      "title": "Sutomo Residence Syariah RedPartner",
      "snippet": "Padang, Sumatera Barat",
      "koordinat": LatLng(-0.945076662791712, 100.3771199602766),
    },
  ];

  Set<Marker> _markersHotel() {
    Set<Marker> markers = {};
    for (var hotel in listHotel) {
      markers.add(
        Marker(
          markerId: MarkerId(hotel['markerId']),
          position: hotel['koordinat'],
          infoWindow: InfoWindow(
            title: hotel['title'],
            snippet: hotel['snippet'],
          ),
        ),
      );
    }
    return markers;
  }

  //fungsi untuk membaca file
  String? _pilihFileTheme;

  Future<void> _loadTheme(String path) async {
    String fileTheme = await rootBundle.loadString(path);
    setState(() {
      _pilihFileTheme = fileTheme;
    });
  }

  void _loadThemeRetro() => _loadTheme("theme_map/retro_theme.json");

  MapType _mapType = MapType.normal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(-0.9407513848259412, 100.3758264004471),
              zoom: 13,
            ),
            markers: _markersHotel(),
            style: _pilihFileTheme,
            mapType: _mapType,
          ),
          Positioned(
            top: 40,
            right: 10,
            child: PopupMenuButton(
              onSelected: (val) {
                if (val == "retro") {
                  _loadThemeRetro();
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(value: "retro", child: Text("Tema Retro")),
                PopupMenuItem(value: "standard", child: Text("Tema Standard")),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _mapType = MapType.satellite;
                    });

                  },
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.satellite, size: 36, color: Colors.white),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _mapType = MapType.normal;
                    });

                  },
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.map, size: 36, color: Colors.white),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
