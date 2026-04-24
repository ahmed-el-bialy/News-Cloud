import 'package:flutter/material.dart';

import 'Views/Main_View.dart';


void main(){
  runApp(NewsCloud());
}


class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
