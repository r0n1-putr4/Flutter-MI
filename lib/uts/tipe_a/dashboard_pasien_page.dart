import 'package:belajar_flutter_mi2c/uts/tipe_a/grid_rawat_inap_page.dart';
import 'package:belajar_flutter_mi2c/uts/tipe_a/rawat_inap_page.dart';
import 'package:flutter/material.dart';

class DashboardPasienPage extends StatefulWidget {
  const DashboardPasienPage({super.key});

  @override
  State<DashboardPasienPage> createState() => _DashboardPasienPageState();
}

class _DashboardPasienPageState extends State<DashboardPasienPage> {
  int _pilBotomNav = 0;
  static final List<Widget> _halaman = [RawatInapPage(), GridRawatInapPage()];

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
