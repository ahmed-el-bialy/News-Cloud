import 'package:flutter/material.dart';

import '../widgets/category_news_list_builder.dart';

class BusinessNewsView extends StatelessWidget {
  const BusinessNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(color: Colors.white,size: 28),
        backgroundColor: Color(0xFF263238),
        title: Text("Business News",style: TextStyle(color: Colors.white,fontSize: 30),),
        centerTitle: true,
      ) ,

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CategoryNewsListBuilder(category: "business")

        ],
      ),
    );
  }
}
