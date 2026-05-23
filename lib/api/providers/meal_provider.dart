import 'package:belajar_flutter_mi2c/api/models/model_meals.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MealProvider extends ChangeNotifier {
  List<Meal> _meals = [];
  List<Meal> get meals => _meals;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String _message = "";
  String get message => _message;

  // async - di gunakan menunggu proses lain,pakai async-await
  Future<void> getDataMeal(String category) async  {
    try {
      _isLoading = true;
      notifyListeners();//memberi tahu widget/provider bahwa data berubah sehingga UI harus di-refresh.

      http.Response hasilResponse = await http.get(
        Uri.parse(
          "https://www.themealdb.com/api/json/v1/1/filter.php?c=$category",
        ),
      );

      final hasil = modelMealsFromJson(hasilResponse.body);

      _meals = hasil.meals ?? [];

      _message = "Success";
    } catch (e) {
      _message = "Error : $e";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
