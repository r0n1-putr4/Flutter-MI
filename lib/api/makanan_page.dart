import 'package:belajar_flutter_mi2c/api/models/model_categories.dart';
import 'package:belajar_flutter_mi2c/api/models/model_meals.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MakananPage extends StatefulWidget {
  final Category _category;
  const MakananPage(this._category,{super.key});

  @override
  State<MakananPage> createState() => _MakananPageState();
}

class _MakananPageState extends State<MakananPage> {
  late Future<List<Meal>?> _dataMeal;// Data Akan Kita Load
  List<Meal> allMeal = [];// Variable akan menyimpan data Response

  Future<List<Meal>?> _getDataMeal() async {
    try {
      http.Response hasilResponse = await http.get(
        Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?c=${widget._category.strCategory}"),
      );
      final _hasilResponse = modelMealsFromJson(hasilResponse.body);

      allMeal = _hasilResponse.meals ?? [];
      return allMeal;

    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error $e")));
    }
    return null;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Cara Memanggil data jika saat di RUN
    _dataMeal = _getDataMeal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._category.strCategory),
      ),
      body: FutureBuilder<List<Meal>?>(
        future: _dataMeal,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Terjadi kesalahan saat mengambil data"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("Tidak ada data berita"));
          } else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Meal itemMeal = snapshot.data![index];
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                          child: Image(
                            image: NetworkImage(itemMeal.strMealThumb),
                            width: double.infinity,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Text(
                          "Makanan : ${itemMeal.strArea}",
                          maxLines: 1,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
