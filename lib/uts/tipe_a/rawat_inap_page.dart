import 'package:belajar_flutter_mi2c/uts/tipe_a/bayar_page.dart';
import 'package:flutter/material.dart';

class RawatInapPage extends StatefulWidget {
  const RawatInapPage({super.key});

  @override
  State<RawatInapPage> createState() => _RawatInapPageState();
}

class _RawatInapPageState extends State<RawatInapPage> {
  static const listProgramStudi = ["Kelas 1", "Kelas 2", "Kelas 3", "VIP"];
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
                    "Biaya Rawat Inap",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    labelText: "Nama Lengkap",
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

                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    labelText: "No Tlpn",
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

                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    labelText: "Alamat",
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
                Text("Kepesertaan BPJS"),
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
                          title: Text("BPJS"),
                        ),
                      ),
                      Flexible(
                        child: RadioListTile<String>(
                          value: "P",
                          title: Text("Mandiri"),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("Kelas Kamar"),
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
                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    labelText: "Lama Hari",
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

                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "Biaya Dokter",
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

                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "Biaya Obat",
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

                TextFormField(
                  // controller: nimController,
                  decoration: InputDecoration(
                    hintText: "Biaya Tindakan",
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>BayarPage()));
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
