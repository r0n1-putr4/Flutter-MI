import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Halaman Navigator Push"),
          SizedBox(height: 15,),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Kembali"))
        ],
      ),
    );
  }
}
