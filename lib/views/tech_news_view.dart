import 'package:flutter/material.dart';

import '../widgets/category_news_list_builder.dart';

class TechNewsView extends StatelessWidget {
  const TechNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        backgroundColor: Color(0xFF311B92),
        title: Text(
          "Technology News",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CategoryNewsListBuilder(category: "technology")

        ],
      ),
    );
  }
}
