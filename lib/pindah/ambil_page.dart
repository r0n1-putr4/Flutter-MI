import 'package:flutter/material.dart';

class AmbilPage extends StatelessWidget {
  final String nim;
  final String nama;
  final String email;
  final String noHp;

  const AmbilPage(
      this.nim,
      this.nama,
      this.email,
      this.noHp,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Data Mahasiswa"),
          SizedBox(height: 20,),
          Text("NIM : $nim"),
          SizedBox(height: 10,),
          Text("Nama : $nama"),
          SizedBox(height: 10,),
          Text("Email : $email"),
          SizedBox(height: 10,),
          Text("Hp : $noHp"),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Kembali"))
        ],
      ),
    );
  }
}
