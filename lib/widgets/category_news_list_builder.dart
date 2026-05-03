import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/news_model.dart';
import '../services/news_services.dart';
import 'news_list_widget.dart';

class CategoryNewsListBuilder extends StatefulWidget {
 final  String category;
  final String country;

  const CategoryNewsListBuilder({
    super.key,
    required this.category,
    this.country="",
  });

  @override
  State<CategoryNewsListBuilder> createState() =>
      _CategoryNewsListBuilderState();
}

class _CategoryNewsListBuilderState extends State<CategoryNewsListBuilder> {
  late Future<List<NewsModel>> future;

  @override
  void initState() {
    super.initState();
    setState(() {
      getnews();
    });
  }

  void getnews() {
    future = NewsServices().getCategoryNews(
      newsCategory: widget.category,
      country:widget.country,
    );
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.isEmpty) {
            return SliverFillRemaining(
              child: Center(
                child: Column(
                  children: [
                    Icon(Icons.new_releases_sharp, size: 25.sp),
                    Text(
                      "No News for now ,please try later  ",
                      style: TextStyle(fontSize: 25.sp),
                    ),
                  ],
                ),
              ),
            );
          }
          return NewsListWidget(newsList: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else {
          return SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(color: Colors.blueAccent),
            ),
          );
        }
      },
    );
  }
}
