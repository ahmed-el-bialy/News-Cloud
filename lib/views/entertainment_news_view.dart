import 'package:flutter/material.dart';

import '../widgets/category_news_list_builder.dart';

class EntertainmentNewsView extends StatelessWidget {
  const EntertainmentNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        backgroundColor: Color(0xFFD81B60),
        title: Text(
          "Entertainment News",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),

      body:

      CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CategoryNewsListBuilder(category: "entertainment")

        ],
      ),
    );
  }
}
