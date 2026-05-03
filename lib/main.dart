import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'views/main_View.dart';

void main() {
  runApp(NewsCloud());
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        child: MaterialApp(debugShowCheckedModeBanner: false, home: MainView()),
      ),
    );
  }
}
