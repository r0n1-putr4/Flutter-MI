import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("App Bar"),),
        leading: Icon(Icons.home,color: Colors.white,),
        backgroundColor: Colors.blue,
        actions: [
          Icon(Icons.search,color: Colors.white,)
        ],
      ),
    );
  }
}
