import 'package:flutter/material.dart';

class StatefullPage extends StatefulWidget {
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
