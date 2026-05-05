import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Menampilkan Gambar",
          style: TextStyle(color: Colors.white),),),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Menampilkan Gambar dengan Assets"),
              Image.asset("images/berita1.jpeg",width: 300,),
              SizedBox(height: 10,),
              Image.asset("images/berita2.jpeg",width: 300,),
              SizedBox(height: 10,),
              Image.asset("images/berita3.jpeg",width: 300,),
              SizedBox(height: 10,),
              Image.asset("images/berita4.jpg",width: 300,),
              SizedBox(height: 10,),
              Image(image: NetworkImage("https://down-id.img.susercontent.com/file/id-11134207-7r992-ll8wrts2a6vr98@resize_w900_nl.webp")
                ,width: 300,)
            ],
          ),
        ),
      ),
    );
  }
}
