import 'package:belajar_flutter_mi2c/api/providers/meal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/model_meals.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() =>
        context.read<MealProvider>().getDataMeal("Seafood"));
    //alankan setelah sync task selesai
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MealProvider>(context);
    return Scaffold(
      body: provider.isLoading
          ? Center(child: CircularProgressIndicator())
          : provider.meals.isEmpty
          ? Center(child: Text("Tidak ada data"))
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: provider.meals.length,
              itemBuilder: (context, index) {
                Meal itemMeal = provider.meals[index];
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
            ),
    );
  }
}
