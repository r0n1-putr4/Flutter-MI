import 'package:flutter/material.dart';

class BayarPage extends StatefulWidget {
  const BayarPage({super.key});

  @override
  State<BayarPage> createState() => _BayarPageState();
}

class _BayarPageState extends State<BayarPage> {
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
              Text("Nama Pasien : Roni Putra", style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text("Hp : 082334563453", style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text(
                "Alamat : Jln. Cupak Tangah, Pauh Kota Padang",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "Status Kepersetaan BPJS : BPJS",
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              SizedBox(height: 10),
              Text(
                "Kelas Kamar : Kelas 1",
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
                "Tarif Kamar : 300000 ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Biaya Obat : 500000 ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Biaya Dokter : 1000000 ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Biaya Tindakan : 500000 ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Diskon : 300000 ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Total Bayar : 2700000 ",
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
