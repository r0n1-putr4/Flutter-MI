import 'package:flutter/material.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _pilBottomNav = 0;

  void _klikBottomNav(int index) {
    setState(() {
      _pilBottomNav = index;
    });
  }

  static final List<Widget> _halaman = [
    GridViewPage(),
    ListViewPage(),
    FormNilaiPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _halaman[_pilBottomNav]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _klikBottomNav,
        currentIndex: _pilBottomNav,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade500,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: "GRID"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Form"),
        ],
      ),
    );
  }
}
