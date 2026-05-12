import 'package:flutter/material.dart';
import '../data/models/category_model.dart';
import 'category_card.dart';

class CategoriesListBuilder extends StatelessWidget {
  CategoriesListBuilder({super.key});

  final List<CategoryModel> categoryList = [
    CategoryModel(
      imagePath: 'assets/images/general.avif',
      pageName: 'General',
      categories: "other,crime,world",
    ),
    CategoryModel(
      imagePath: 'assets/images/technology.jpeg',
      pageName: 'Technology',
      categories: "technology",
    ),
    CategoryModel(
      imagePath: 'assets/images/entertainment.webp',
      pageName: 'Entertainment',
      categories: "entertainment",
    ),
    CategoryModel(
      imagePath: 'assets/images/business.avif',
      pageName: 'Business',
      categories: 'business',
    ),
    CategoryModel(
      imagePath: 'assets/images/sports.avif',
      pageName: 'sports',
      categories: 'sports',
      country: "eg,es,sa,gb,fr",
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
