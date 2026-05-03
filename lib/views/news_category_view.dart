import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';

import '../widgets/category_news_list.dart';

class NewsCategoryView extends StatelessWidget {
  const NewsCategoryView({super.key, required this.model});

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        backgroundColor: Color(0xFF1976D2),
        title: Text(
          "${model.pageName} News",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CategoryNewsListBuilder(
            category: (model.pageName).toLowerCase(),
            country: model.country,
          ),
        ],
      ),
    );
  }
}
