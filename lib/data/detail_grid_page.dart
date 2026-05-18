import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailGridPage extends StatefulWidget {
  final Map<String, dynamic> itemBarang;

  const DetailGridPage(this.itemBarang, {super.key});

  @override
  State<DetailGridPage> createState() => _DetailGridPageState();
}

class _DetailGridPageState extends State<DetailGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Detail Berita", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Image(
              image: NetworkImage(widget.itemBarang['gambar']),
              width: double.infinity,
              height: 300,
            ),
            Center(
              child: Text(
                widget.itemBarang['nama_barang'],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            Text(
              widget.itemBarang['harga'],
              style: TextStyle(color: Colors.red),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("${widget.itemBarang['rating']}"),
                RatingBarIndicator(
                  rating: widget.itemBarang['rating'],
                  itemBuilder: (context, index) =>
                      Icon(Icons.star, color: Colors.amber),
                  itemCount: 5,
                  itemSize: 20,
                  direction: Axis.horizontal,
                ),
                SizedBox(width: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.itemBarang['deskripsi']),
            ),
          ],
        ),
      ),
    );
  }
}
