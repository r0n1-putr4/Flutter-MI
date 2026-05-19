import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ModalMapPage extends StatefulWidget {
  const ModalMapPage({super.key});

  @override
  State<ModalMapPage> createState() => _ModalMapPageState();
}

class _ModalMapPageState extends State<ModalMapPage> {
  final List<Map<String, dynamic>> listHotel = [
    {
      "markerId": "hotel01",
      "title": "Townhouse Oak Polamas Residence",
      "snippet": "Polamas Residence Syariah",
      "koordinat": LatLng(-0.9352069486260919, 100.37617549457364),
      "gambar":
          "https://lh3.googleusercontent.com/gps-proxy/ALd4DhHUjA1_tlsgSnm_Y9tlnBmIv__WYXAQGNMNUsCkxx_nMo8d1rtBbKQcD8EPPYm06IRu6SDgooi4nucbKIug6omVUnKQ7lkjhN8FmsAgYHsJ0UKFKniSYny7RCRT-Hrp8sOeURcdoc0jtI0mOLouunuq4cBrm5l8YAjTGvVqK6xkEromlDRtQ_Ri=w408-h272-k-no",
    },
    {
      "markerId": "hotel02",
      "title": "Daima Gardenstay",
      "snippet": "Padang",
      "koordinat": LatLng(-0.9371808635953277, 100.37840744905716),
      "gambar":
          "https://lh3.googleusercontent.com/gps-cs-s/APNQkAGqBemIXPzKSYTLKNIRbaU5lQujxHLfZ9WJuRoBR5nomhFvD2uPh3evDioowDTqJWIAJGV26M5pUp-0npnUHhm4eGLmwIBEaOI-BQVka0XG1cgsJ94q909gZ2mmmr-lT9vueB2KnhAO2pQf=w408-h272-k-no",
    },
    {
      "markerId": "hotel03",
      "title": "RedDoorz Syariah @ Jalan Andalas Padang",
      "snippet": "Aisya Hasbi GuestHouse",
      "koordinat": LatLng(-0.9406138203099994, 100.38089703116098),
      "gambar":
          "https://lh3.googleusercontent.com/gps-cs-s/APNQkAELI52D--3TONX_AnHksZcKXJpSuKjisxufDQZBiDYJe-tLzOjHocXBaV2V43St3on_17iEhQqq_wU3Xsqw5ppSauGFm37clWMW3Po-5wsD64NZS5shVz40mKXmAELk42aKbGbSot2Kt7D7=w408-h272-k-no",
    },
    {
      "markerId": "hotel04",
      "title": "Sutomo Residence Syariah RedPartner",
      "snippet": "Padang, Sumatera Barat",
      "koordinat": LatLng(-0.945076662791712, 100.3771199602766),
      "gambar":
          "https://lh3.googleusercontent.com/gps-cs-s/APNQkAHhrkQex_rbEj3a14GOlCN6yP_urxv4DTAE9hxoD_s0qPh4xA_sJNYo97S_IDicUJtfzAvhTvy8Ez1yZoeO4vRVMAWud9VCGgFchYorKE1cKWhbn6GqESUkEA2oDs3yoCrD8M4=w408-h272-k-no",
    },
  ];

  void _showDetail(String title, String snippet, String gambar) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          height: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                maxLines: 1,
              ),

              Text(
                snippet,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                maxLines: 2,
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(width: 5),
                        Text("4.3"),
                      ],
                    ),
                  ),

                  SizedBox(width: 5),
                  Text("Rp. 300.000"),
                ],
              ),

              const SizedBox(height: 15),

              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image(
                  image: NetworkImage(gambar),
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.directions),
                label: const Text("Detail"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  final LatLng _koordinatCenter = LatLng(
    -0.9407513848259412,
    100.3758264004471,
  );
  final double _zoom = 15.0;

  Set<Marker> _createMarkers() {
    Set<Marker> markers = {};
    for (var hotel in listHotel) {
      markers.add(
        Marker(
          markerId: MarkerId(hotel['markerId']),
          position: hotel['koordinat'],
          onTap: () {
            _showDetail(hotel['title'], hotel['snippet'], hotel['gambar']);
          },
        ),
      );
    }
    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            markers: _createMarkers(),
            initialCameraPosition: CameraPosition(
              target: _koordinatCenter,
              zoom: _zoom,
            ),
          ),
        ],
      ),
    );
  }
}
