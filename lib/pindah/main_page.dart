import 'package:belajar_flutter_mi2c/pindah/ambil_page.dart';
import 'package:belajar_flutter_mi2c/pindah/navigator_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Pindah Halaman",
          style: TextStyle(color: Colors.white),),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_)=>NavigatorPage()));
                },
                child: Text("Navigator Push")),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/route_page');
              },
              child: Text("Route dan PushNamed")),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (_)=>
                        AmbilPage("23456677",
                            "Roni Putra",
                            "rn.putra@gmail.com",
                            "082334563453")));
              },
              child: Text("Kirim Data")),
        ],
      ),
    );
  }
}
