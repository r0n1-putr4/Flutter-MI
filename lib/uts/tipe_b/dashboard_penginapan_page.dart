import 'package:belajar_flutter_mi2c/uts/tipe_b/penginapan_page.dart';
import 'package:flutter/material.dart';

import '../tipe_a/grid_rawat_inap_page.dart';

class DashboardPenginapanPage extends StatefulWidget {
  const DashboardPenginapanPage({super.key});

  @override
  State<DashboardPenginapanPage> createState() => _DashboardPenginapanPageState();
}

class _DashboardPenginapanPageState extends State<DashboardPenginapanPage> {
  int _pilBotomNav = 0;
  static final List<Widget> _halaman = [PenginapanPage(), GridRawatInapPage()];

  void _klikPilih(int index) {
    setState(() {
      _pilBotomNav = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("UTS Flutter", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: _halaman[_pilBotomNav]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pilBotomNav,
        onTap: _klikPilih,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade500,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Biaya"),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Makanan"),
        ],
      ),
    );
  }
}
