import 'package:flutter/cupertino.dart';

class CategoryModel {
  String imagePath;
  String categoryName;
  Widget page;

  CategoryModel({
    required this.imagePath,
    required this.categoryName,
    required this.page,
  });
}
