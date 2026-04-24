import 'package:flutter/material.dart';
import '../Models/Category_Model.dart';
import '../Views/Business_News_View.dart';
import '../Views/Entertainment_News_View.dart';
import '../Views/General_News_View.dart';
import '../Views/Sport_News_View.dart';
import '../Views/Tech_News_View.dart';
import 'Category_Card_Widget.dart';

class CategoriesBuilderWidget extends StatelessWidget {
  CategoriesBuilderWidget({super.key});

  List<CategoryModel> categoryList = [
    CategoryModel(
      imagePath: 'assets/general.avif',
      categoryName: 'General',
      page: GeneralNewsView(),
    ),
    CategoryModel(
      imagePath: 'assets/technology.jpeg',
      categoryName: 'Technology',
      page: TechNewsView(),
    ),
    CategoryModel(
      imagePath: 'assets/entertainment.webp',
      categoryName: 'Entertainment',
      page: EntertainmentNewsView(),
    ),
    CategoryModel(
      imagePath: 'assets/business.avif',
      categoryName: 'Business',
      page: BusinessNewsView(),
    ),
    CategoryModel(
      imagePath: 'assets/sports.avif',
      categoryName: 'sports',
      page: SportNewsView(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.heightOf(context) * .2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CategoryCardWidget(categoryModel: categoryList[index]);
          },
        ),
      ),
    );
  }
}
