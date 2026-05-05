import 'package:belajar_flutter_mi2c/uts/tipe_b/bayar_penginapan_page.dart';
import 'package:flutter/material.dart';
class PenginapanPage extends StatefulWidget {
  const PenginapanPage({super.key});

  @override
  State<PenginapanPage> createState() => _PenginapanPageState();
}

class _PenginapanPageState extends State<PenginapanPage> {
  static const listProgramStudi = ["Standard Room", "Deluxe Room", "Junior Suite Room", "Presidential Suite"];
  String? valProgramStudi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Biaya Penginapan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                SizedBox(height: 20),
                Text("Nama Pelanggan"),
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "Roni Putra",
                    prefixIcon: Icon(Icons.person, color: Colors.red),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),

                  validator: (val) {
                    return val!.isEmpty ? "Tidak Boleh kosong" : null;
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text("No Telpon"),
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "082334563453",
                    prefixIcon: Icon(Icons.phone_android, color: Colors.red),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),

                  validator: (val) {
                    return val!.isEmpty ? "Tidak Boleh kosong" : null;
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text("Alamat"),
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "Jln. Cupak Tangah",
                    prefixIcon: Icon(Icons.location_on, color: Colors.red),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),

                  validator: (val) {
                    return val!.isEmpty ? "Tidak Boleh kosong" : null;
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text("Kategori Pelanggan"),
                RadioGroup<String>(
                  // groupValue: valJekel,
                  onChanged: (val) {
                    setState(() {
                      // valJekel = val;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: RadioListTile<String>(
                          value: "L",
                          title: Text("Personal"),
                        ),
                      ),
                      Flexible(
                        child: RadioListTile<String>(
                          value: "P",
                          title: Text("Perusahaan"),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Jenis Kamar"),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  items: listProgramStudi
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      valProgramStudi = val;
                    });
                  },
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Program Studi Wajib di pilih";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text("Lama Hari"),
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "1",
                    prefixIcon: Icon(Icons.calendar_today, color: Colors.red),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),

                  validator: (val) {
                    return val!.isEmpty ? "Tidak Boleh kosong" : null;
                  },
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 10),
                Text("Kasur Tambahan"),
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "Rp.",
                    prefixIcon: Icon(Icons.currency_exchange, color: Colors.red),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),

                  validator: (val) {
                    return val!.isEmpty ? "Tidak Boleh kosong" : null;
                  },
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 10),
                Text("Bantal Tambahan"),
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "Rp.",
                    prefixIcon: Icon(Icons.medical_services, color: Colors.red),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),

                  validator: (val) {
                    return val!.isEmpty ? "Tidak Boleh kosong" : null;
                  },
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 10),
                Text("Ranjang Bayi"),
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "Rp.",
                    prefixIcon: Icon(Icons.currency_exchange, color: Colors.red),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),

                  validator: (val) {
                    return val!.isEmpty ? "Tidak Boleh kosong" : null;
                  },
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>BayarPenginapanPage()));
                  },
                  child: Text("BAYAR"),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
