import 'package:flutter/material.dart';

class BayarPenginapanPage extends StatefulWidget {
  const BayarPenginapanPage({super.key});

  @override
  State<BayarPenginapanPage> createState() => _BayarPenginapanPageState();
}

class _BayarPenginapanPageState extends State<BayarPenginapanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Center(child: Text("Faktur Bayar", style: TextStyle(fontSize: 25))),
              SizedBox(height: 10),
              Divider(),

              SizedBox(height: 10),
              Text("Nama Pelanggan : Roni Putra", style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text("Hp : 082334563453", style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text(
                "Alamat : Jln. Cupak Tangah, Pauh Kota Padang",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "Kategori Pelanggan : Personal",
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              SizedBox(height: 10),
              Text(
                "Jenis Kamar: Standard",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              SizedBox(height: 10),
              Text(
                "Hari : 1",
                style: TextStyle(fontSize: 16, color: Colors.cyan),
              ),

              SizedBox(height: 20),
              Divider(),
              Text(
                "Bayar Rp",
                style: TextStyle(fontSize: 24, color: Colors.deepOrangeAccent),
              ),

              SizedBox(height: 10),
              Text(
                "Biaya Kamar :  Rp. 100000 ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Kasur Tambahan : 100000 ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Bantal Tambahan : 0",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Ranjang Bayi : 0",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Diskon : 0",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Potongan : Rp 5000",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Total Bayar :  Rp 195000",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
