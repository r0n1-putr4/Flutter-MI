import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  const StatelessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Dasar Flutter Mobile"),
        backgroundColor: Colors.green,
      ),
      body: Center(child: Text("Ini adalah halaman utama dari app"))
    );
  }
}
