import 'package:belajar_flutter_mi2c/api/makanan_page.dart';
import 'package:flutter/material.dart';
import 'models/model_categories.dart';
import 'package:http/http.dart' as http;

class KategoriPage extends StatefulWidget {
  const KategoriPage({super.key});

  @override
  State<KategoriPage> createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  late Future<List<Category>?> _dataCategory;

  // list asli
  List<Category> allCategories = [];

  // list hasil pencarian
  List<Category> filteredCategories = [];

  TextEditingController cariController = TextEditingController();

  Future<List<Category>?> _getDataCategory() async {
    try {
      http.Response hasilResponse = await http.get(
        Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php"),
      );

      final hasil = modelCategoriesFromJson(hasilResponse.body);

      // gunakan null safety
      allCategories = hasil.categories ?? [];
      filteredCategories = List.from(allCategories);

      return allCategories;
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error $e")));
    }
    return null;
  }

  void prosesCari(String value) {
    setState(() {
      filteredCategories = allCategories.where((item) {
        return item.strCategory.toLowerCase().contains(value.toLowerCase());
      }).toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dataCategory = _getDataCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: cariController,
              onChanged: (val) {
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
            Expanded(
              child: FutureBuilder<List<Category>?>(
                future: _dataCategory,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("Terjadi kesalahan saat mengambil data"),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text("Tidak ada data berita"));
                  } else {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: filteredCategories.length,
                      itemBuilder: (context, index) {
                        Category itemCategori = filteredCategories[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => MakananPage(itemCategori),
                              ),
                            );
                          },
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10),
                                    ),
                                    child: Image(
                                      image: NetworkImage(
                                        itemCategori.strCategoryThumb,
                                      ),
                                      width: double.infinity,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Text(
                                    "Kategori : ${itemCategori.strCategory}",
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
