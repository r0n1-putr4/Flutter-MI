import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

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
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.red,
              child: Center(child: Text("A",
                style: TextStyle(color:Colors.white),)),
            ),
            SizedBox(height: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("B",style: TextStyle(color: Colors.white),),
                  Text("1",style: TextStyle(color: Colors.white),)
                ],
              )),
            ),
            SizedBox(height: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 5,),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
              child: Center(child: Text("B",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 5,),
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
