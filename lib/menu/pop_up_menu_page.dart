import 'package:belajar_flutter_mi2c/app_bar/app_bar_page.dart';
import 'package:belajar_flutter_mi2c/gambar/images_page.dart';
import 'package:flutter/material.dart';

class PopUpMenuPage extends StatelessWidget {
  const PopUpMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Pop Up Menu", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          PopupMenuButton(
            onSelected: (val){
              if(val=="gambar"){
                Navigator.push(context,
                    MaterialPageRoute(builder: (_)=>ImagesPage()));
              }else{
                Navigator.push(context,
                    MaterialPageRoute(builder: (_)=>AppBarPage()));
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: "gambar", child: Text("Menampilkan Gambar")),
              PopupMenuItem(value: "appbar", child: Text("App Bar"))
            ],
          ),
        ],
      ),
    );
  }
}
