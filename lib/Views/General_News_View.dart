import 'package:flutter/material.dart';
import '../Widgets/Category_NewsList_Builder.dart';

class GeneralNewsView extends StatelessWidget {
  const GeneralNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(color: Colors.white,size: 28),
        backgroundColor: Color(0xFF1976D2),
        title: Text("General News",style: TextStyle(color: Colors.white,fontSize: 30),),
        centerTitle: true,
      ) ,

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CategoryNewsListBuilder(category: "health,other,crime,world,tourism")

        ],
      ),
    );
  }
}
