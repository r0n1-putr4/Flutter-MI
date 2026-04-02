import 'package:flutter/material.dart';

class StylePage extends StatelessWidget {
  const StylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Belajar Style Di flutter"))),
      body: Container(
        width: 200,
        height: 100,
        color: Colors.blue,
        child: Text(
          "Mengatur Style pada Text",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Serif',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
