import 'package:flutter/material.dart';

import '../widgets/category_news_list_builder.dart';

class SportNewsView extends StatelessWidget {
  const SportNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        backgroundColor: Color(0xFF2E7D32),
        title: Text(
          "Sport News",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CategoryNewsListBuilder(
            category: "sports",
            country: "&country=eg,es,sa,gb,fr",
          ),
        ],
      ),
    );
  }
}
