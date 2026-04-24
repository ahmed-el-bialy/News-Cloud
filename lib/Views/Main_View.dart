import 'package:flutter/material.dart';
import '../Widgets/Categories_Builder_Widget.dart';
import '../Widgets/News_List_Builder.dart';
import '../Widgets/Title_Widget.dart';

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
