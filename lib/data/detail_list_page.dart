import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailListPage extends StatelessWidget {
  final Map<String,dynamic> itemBerita;
  const DetailListPage(this.itemBerita,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Detail Berita"
          ,style: TextStyle(color: Colors.white),),),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Center(
              child: Text(itemBerita['judul'],
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ),
            Image.asset(itemBerita['gambar']),
            Text(itemBerita['tanggal'],style: TextStyle(color: Colors.grey.shade600),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("${itemBerita['rating']}"),
                RatingBarIndicator(
                  rating: itemBerita['rating'],
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20,
                  direction: Axis.horizontal,
                ),
                SizedBox(width: 10,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(itemBerita['isi']),
            )
          ],
        ),
      ),
    );
  }
}
