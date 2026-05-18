import 'package:flutter/material.dart';

import 'detail_grid_page.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<Map<String, dynamic>> listBarang = [
    {
      "gambar":
      "https://down-id.img.susercontent.com/file/id-11134207-8224v-mhc82koswoi077.webp",
      "nama_barang":
      "PC Gaming 5 Jutaan Ultra Smooth 1080p | i3 12100F GTX 1650 RAM 16GB SSD 128GB HDD 500GB | ECS PRO",
      "harga": "Rp5.979.000",
      "terjual": "115",
      "rating": 5.0,
      "alamat": "KAB. WONOSOBO",
      "deskripsi":
      "EXCO COMPUTER STORE adalah spesialis PC Rakitan dan PC Siap Pakai (PC Only) untuk berbagai kebutuhan digital modern.",
    },
    {
      "gambar":
      "https://down-id.img.susercontent.com/file/sg-11134201-7rd6o-m7uh3kt4s09967.webp",
      "nama_barang":
      "Lenovo Komputer Full PC All-in-One Baru Terbaru HD Super Tipis Intel Core i3/i5/i7 Untuk Rumah, Belajar, Kantor, Gaming dan Hiburan",
      "harga": "Rp7.583.333",
      "terjual": "4.6Rb",
      "rating": 4.8,
      "alamat": "KOTA JAKARTA UTARA",
      "deskripsi":
      "Komputer all-in-one Intel i3/i5/i7 baru, Hadiah gratis dengan pesanan: keyboard + keyboard",
    },
    {
      "gambar":
      "https://down-id.img.susercontent.com/file/id-11134207-822wu-mmuggl75jshvbe.webp",
      "nama_barang":
      "PC Gaming Intel Core i5 12400f | RTX 5060 Ti 8GB | 16GB | SSD | HDD",
      "harga": "Rp7.953.000",
      "terjual": "9,2Rb",
      "rating": 4.9,
      "alamat": "KOTA BANDUNG",
      "deskripsi":
      "Processor : Intel Core i5 12400f 2.5Ghz/4.4Ghz 6C/12T Tray",
    },
    {
      "gambar":
      "https://down-id.img.susercontent.com/file/id-11134207-7rask-m39jj6xx47fj91.webp",
      "nama_barang":
      "Three Sheep Network Komputer all-in-one PC Intel core i5/i7,pc baru,22''24''/27,Ram 16G+512GB SSD",
      "harga": "Rp2.884.000",
      "terjual": "2,8Rb",
      "rating": 4.8,
      "alamat": "KOTA JAKARTA BARAT",
      "deskripsi":
      "Antarmuka Motherboard: Input/Output Audio, USB2.0*4, RJ45 LAN*1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Grid View",
          style: TextStyle(color: Colors.white),),),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: listBarang.length,
          itemBuilder: (context,index){
            Map<String,dynamic> item = listBarang[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(context, 
                    MaterialPageRoute(builder: (_)=>DetailGridPage(item)));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child:
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10)
                      ),
                      child: Image(image: NetworkImage(item['gambar']),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    )),

                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(item['nama_barang'],maxLines: 1,
                        style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(item['harga'],style: TextStyle(color: Colors.red),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(item['terjual']),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.location_pin,
                          color: Colors.grey.shade400,
                          size: 15,
                        ),
                        Text(item['alamat'],
                          style: TextStyle(fontSize: 12,
                            color: Colors.grey.shade400,),),
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
