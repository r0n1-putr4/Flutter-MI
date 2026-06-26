import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

import 'detail_list_page.dart';

class ListViewPage extends StatefulWidget {
  @Preview(
      name: 'Roni',
      textScaleFactor: 2.0,
      brightness: Brightness.light
  )
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Map<String, dynamic>> listBerita = [
    {
      "judul": "Judul Satu",
      "isi":
          "Lorem Ipsum Dolor Sit Amet, Consetetur Sadipscing Elitr, Sed Diam Nonumy Eirmod Tempor Invidunt Ut Labore Et Dol",
      "tanggal": "09 April 2026",
      "rating": 4.0,
      "gambar": "images/berita1.jpeg",
    },
    {
      "judul": "Judul Dua",
      "isi":
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At v",
      "tanggal": "08 April 2026",
      "rating": 4.2,
      "gambar": "images/berita2.jpeg",
    },
    {
      "judul": "Judul Tiga",
      "isi":
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At v",
      "tanggal": "07 April 2026",
      "rating": 3.0,
      "gambar": "images/berita3.jpeg",
    },
    {
      "judul": "Judul Empat",
      "isi":
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At v",
      "tanggal": "06 April 2026",
      "rating": 5.0,
      "gambar": "images/berita4.jpg",
    },
  ];
  List<Map<String, dynamic>> hasilPencarian = [];
  TextEditingController cariBeritaController = TextEditingController();

  void prosesCari(String judul) {
    setState(() {
      hasilPencarian = listBerita.where((itemPencarian) {
        return itemPencarian['judul'].toLowerCase().contains(
          judul.toLowerCase(),
        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Menampilkan data menggunakan List View")),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: cariBeritaController,
              onChanged: (val){
                prosesCari(val);
              },
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                fillColor: Colors.grey.shade300,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            hasilPencarian.isEmpty && cariBeritaController.text.isNotEmpty
                ? Image.asset("images/img_not_found.jpeg") :
            Expanded(
              child: ListView.builder(
                itemCount: hasilPencarian.isEmpty ? listBerita.length : hasilPencarian.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> itemBerita = hasilPencarian.isEmpty ? listBerita[index]:hasilPencarian[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailListPage(itemBerita),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(itemBerita["gambar"]),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  itemBerita["judul"],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  itemBerita['tanggal'],
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${itemBerita['rating']}",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
