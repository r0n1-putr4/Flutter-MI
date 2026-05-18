// To parse this JSON data, do
//
//     final modelCategories = modelCategoriesFromJson(jsonString);

import 'dart:convert';

ModelCategories modelCategoriesFromJson(String str) => ModelCategories.fromJson(json.decode(str));

String modelCategoriesToJson(ModelCategories data) => json.encode(data.toJson());

class ModelCategories {
  List<Category> categories;

  ModelCategories({
    required this.categories,
  });

  factory ModelCategories.fromJson(Map<String, dynamic> json) => ModelCategories(
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
  };
}

class Category {
  String idCategory;
  String strCategory;
  String strCategoryThumb;
  String strCategoryDescription;

  Category({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    idCategory: json["idCategory"],
    strCategory: json["strCategory"],
    strCategoryThumb: json["strCategoryThumb"],
    strCategoryDescription: json["strCategoryDescription"],
  );

  Map<String, dynamic> toJson() => {
    "idCategory": idCategory,
    "strCategory": strCategory,
    "strCategoryThumb": strCategoryThumb,
    "strCategoryDescription": strCategoryDescription,
  };
}
