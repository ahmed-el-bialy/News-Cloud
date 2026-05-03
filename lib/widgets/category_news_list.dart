import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/news_model.dart';
import '../services/news_services.dart';
import 'news_list_builder.dart';
import 'sliver_news_card.dart';

class CategoryNewsListBuilder extends StatefulWidget {
  final String category;
  final String country;

  const CategoryNewsListBuilder({
    super.key,
    required this.category,
    this.country = "",
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
      getNews();
    });
  }

  void getNews() {
    future = NewsServices().getCategoryNews(
      newsCategory: widget.category,
      country: widget.country,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NewsListBuilder(future: future);
  }
}
