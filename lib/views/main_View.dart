import 'package:flutter/material.dart';
import '../widgets/categories_builder_widget.dart';
import '../widgets/news_list_builder.dart';
import '../widgets/title_widget.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "News",
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: "Cloud",
                style: TextStyle(color: Colors.orange[800]),
              ),
            ],
          ),
        ),
        centerTitle: true,
        elevation: 5,
        scrolledUnderElevation: 10,
      ),

      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            CategoriesBuilderWidget(),
            TitleWidget(),
            NewsListBuilder(),
          ],
        ),
      ),

      // NewsCardWidget(),
    );
  }
}
