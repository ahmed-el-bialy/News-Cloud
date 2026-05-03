import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../views/business_news_view.dart';
import '../views/entertainment_news_view.dart';
import '../views/general_news_view.dart';
import '../views/sport_news_view.dart';
import '../views/tech_news_view.dart';
import 'category_card_widget.dart';

class CategoriesBuilderWidget extends StatelessWidget {
  CategoriesBuilderWidget({super.key});

 final List<CategoryModel> categoryList = [
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
