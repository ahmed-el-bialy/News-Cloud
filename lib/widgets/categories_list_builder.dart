import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListBuilder extends StatelessWidget {
  CategoriesListBuilder({super.key});

  final List<CategoryModel> categoryList = [
    CategoryModel(
      imagePath: 'assets/general.avif',
      pageName: 'General',
      categories: "health,other,crime,world,tourism",
    ),
    CategoryModel(
      imagePath: 'assets/technology.jpeg',
      pageName: 'Technology',
      categories: "technology",
    ),
    CategoryModel(
      imagePath: 'assets/entertainment.webp',
      pageName: 'Entertainment',
      categories: "entertainment",
    ),
    CategoryModel(
      imagePath: 'assets/business.avif',
      pageName: 'Business',
      categories: 'business',
    ),
    CategoryModel(
      imagePath: 'assets/sports.avif',
      pageName: 'sports',
      categories: 'sports',
      country: "&country=eg,es,sa,gb,fr",
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
            return CategoryCard(categoryModel: categoryList[index]);
          },
        ),
      ),
    );
  }
}
