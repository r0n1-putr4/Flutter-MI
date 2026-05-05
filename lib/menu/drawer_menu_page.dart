import 'package:flutter/material.dart';
import 'package:flutter_2b/stateless_statefull/statefull_page.dart';
import 'package:flutter_2b/stateless_statefull/stateless_page.dart';

class DrawerMenuPage extends StatelessWidget {
  const DrawerMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Drawer Menu", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Roni Putra"),
              accountEmail: Text("rn.putra@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://img.antaranews.com/cache/1200x800/2012/12/2012120220120625naruto.jpg.webp"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Stateless"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StatelessPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.android),
              title: Text("State Full"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StatefullPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
