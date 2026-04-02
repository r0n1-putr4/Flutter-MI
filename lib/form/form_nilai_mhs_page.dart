import 'package:flutter/material.dart';

class FormNilaiMhsPage extends StatefulWidget {
  const FormNilaiMhsPage({super.key});

  @override
  State<FormNilaiMhsPage> createState() => _FormNilaiMhsPageState();
}

class _FormNilaiMhsPageState extends State<FormNilaiMhsPage> {
  TextEditingController nimController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController nilaiHadirController = TextEditingController();
  TextEditingController nilaiTugasController = TextEditingController();
  TextEditingController nilaiUtsController = TextEditingController();
  TextEditingController nilaiUasController = TextEditingController();

  //variable
  String hasil = "";

  //Key Form
  final _formKey = GlobalKey<FormState>();

  //variable Program studi
  static const listProgramStudi = [
    "Manajemen Informatika",
    "Teknik Komputer",
    "Teknologi Rekayasa Perangkat Lunak",
    "Animasi",
  ];

  String? valProgramStudi, valJekel;

  bool hadir = false;
  bool tugas = false;
  bool uts = false;
  bool uas = false;

  //variable nA = nilai Akhir, nH = nilai Huruf
  double nA = 0.0;
  String nH = "";

  //fungsi NilaiAkhir
  void nilaiAkhir(double kehadiran, double tugas, double uts, double uas) {
    nA = kehadiran * 0.1 + tugas * 0.2 + (uts + uas) / 2 * 0.7;

    if (nA >= 90) {
      nH = "A";
    } else if (nA >= 81) {
      nH = "A-";
    } else if (nA >= 76) {
      nH = "B+";
    } else if (nA >= 71) {
      nH = "B";
    } else if (nA >= 66) {
      nH = "B-";
    } else if (nA >= 61) {
      nH = "C+";
    } else if (nA >= 51) {
      nH = "C-";
    } else if (nA >= 46) {
      nH = "D";
    } else {
      nH = "E";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Form di Flutter", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Form Input Nilai Mahasiswa",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                SizedBox(height: 20),
                Text("NIM"),
                TextFormField(
                  controller: nimController,
                  decoration: InputDecoration(
                    hintText: "2334545467",
                    prefixIcon: Icon(Icons.person, color: Colors.red),
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    )
                  ),

                  validator: (val) {
                    return val!.isEmpty ? "NIM Tidak Boleh kosong" : null;
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text("Nama Lengkap"),
                TextFormField(
                  controller: namaController,
                  decoration: InputDecoration(hintText: "Roni Putra"),
                  validator: (val) {
                    return val!.isEmpty ? "Nama Tidak Boleh Kosong" : null;
                  },
                  keyboardType: TextInputType.text,
                ),

                SizedBox(height: 10),
                Text("Program Studi"),
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
                Text("Kegiatan Kuliah"),
                Row(
                  children: [
                    Flexible(
                      child: CheckboxListTile(
                        value: hadir,
                        onChanged: (val) {
                          setState(() {
                            hadir = val!;
                          });
                        },
                        title: Text("Hadir"),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    Flexible(
                      child: CheckboxListTile(
                        value: tugas,
                        onChanged: (val) {
                          setState(() {
                            tugas = val!;
                          });
                        },
                        title: Text("Tugas"),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: CheckboxListTile(
                        value: uts,
                        onChanged: (val) {
                          setState(() {
                            uts = val!;
                          });
                        },
                        title: Text("UTS"),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    Flexible(
                      child: CheckboxListTile(
                        value: uas,
                        onChanged: (val) {
                          setState(() {
                            uas = val!;
                          });
                        },
                        title: Text("UAS"),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ],
                ),

                Text("Nilai Kehadiran"),
                TextFormField(
                  controller: nilaiHadirController,
                  decoration: InputDecoration(hintText: "0"),
                  keyboardType: TextInputType.number,
                ),

                Text("Nilai Tugas"),
                TextFormField(
                  controller: nilaiTugasController,
                  decoration: InputDecoration(hintText: "0"),
                  keyboardType: TextInputType.number,
                ),

                Text("Nilai UTS"),
                TextFormField(
                  controller: nilaiUtsController,
                  decoration: InputDecoration(hintText: "0"),
                  keyboardType: TextInputType.number,
                ),

                Text("Nilai UAS"),
                TextFormField(
                  controller: nilaiUasController,
                  decoration: InputDecoration(hintText: "0"),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 10),
                Text("Jenis Kelamin"),
                RadioGroup<String>(
                  groupValue: valJekel,
                  onChanged: (val) {
                    setState(() {
                      valJekel = val;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: RadioListTile<String>(
                          value: "L",
                          title: Text("Laki-laki"),
                        ),
                      ),
                      Flexible(
                        child: RadioListTile<String>(
                          value: "P",
                          title: Text("Perempuan"),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (valJekel != null) {
                        setState(() {
                          double nHd = double.parse(nilaiHadirController.text);
                          double nTgs = double.parse(nilaiTugasController.text);
                          double nUts = double.parse(nilaiUtsController.text);
                          double nUas = double.parse(nilaiUasController.text);

                          nilaiAkhir(nHd, nTgs, nUts, nUas);

                          final pilKegiatanKuliah = [
                            if (hadir) "Hadir/Aktif",
                            if (tugas) "Tugas/Latihan",
                            if (uts) "UTS",
                            if (uas) "UAS",
                          ];
                          hasil =
                              "NIM : ${nimController.text}\n"
                              "Nama : ${namaController.text}\n"
                              "Program Studi : $valProgramStudi\n"
                              "Jenis Kelamin : $valJekel\n"
                              "Kegiatan Kuliah : ${pilKegiatanKuliah.join(", ")}\n"
                              "Nilai Akhir : $nA\n"
                              "Nilai Huruf : $nH";
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Silahkan Pilih Jenis Kelamin"),
                          ),
                        );
                      }
                    }
                  },
                  child: Text("SIMPAN"),
                ),
                SizedBox(height: 25),
                Text(hasil),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
