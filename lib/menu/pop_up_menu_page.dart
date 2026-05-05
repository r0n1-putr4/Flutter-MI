import 'package:flutter/material.dart';
import 'package:flutter_2b/app_bar/app_bar_page.dart';
import 'package:flutter_2b/gambar/show_images_page.dart';

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
                    MaterialPageRoute(builder: (_)=>ShowImagesPage()));
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
