import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Layout Stack",
          style: TextStyle(color: Colors.white),),),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.amberAccent,
            child: Text("Kotak Pertama"),
          ),
          Container(
            width: 150,
            height: 80,
            color: Colors.grey,
            child: Text("Kotak Kedua"),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.white,
            child: Text("Kotak Ketiga"),
          ),
        ],
      ),
    );
  }
}
