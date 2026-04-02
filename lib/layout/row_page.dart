import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Layout ROW",
              style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
              child: Center(child: Text("A",
                style: TextStyle(color:Colors.white),)),
            ),
            SizedBox(width: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(width: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(width: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(width: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(width: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(width: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
        
          ],
        ),
      ),
    );
  }
}
