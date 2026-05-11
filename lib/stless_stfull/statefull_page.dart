import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class StatefullPage extends StatefulWidget {
  @Preview(
      name: 'Roni',
      textScaleFactor: 2.0,
      brightness: Brightness.light
  )
  const StatefullPage({super.key});

  @override
  State<StatefullPage> createState() => _StatefullPageState();
}

class _StatefullPageState extends State<StatefullPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar State Full di Flutter Mobile"),
        backgroundColor: Colors.blue,
      ),
      body: Text("State full Page"),
    );
  }
}
