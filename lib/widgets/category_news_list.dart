import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/data/repo/repo.dart';
import 'package:news_cloud/data/services/web_services.dart';
import '../data/models/news_model.dart';
import 'news_list_builder.dart';

class CategoryNewsListBuilder extends StatefulWidget {
  final String category;
  final String? country;

  const CategoryNewsListBuilder({
    super.key,
    required this.category,
    this.country,
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
    Dio dio = Dio();
    WebServices webServices = WebServices(dio);
    Repo repo = Repo(webServices);
    future = widget.country == null
        ? repo.getNewsByCategory(newsCategory: widget.category)
        : repo.getCountriesNewsByCategory(
            newsCategory: widget.category,
            country: widget.country!,
          );
  }

  @override
  Widget build(BuildContext context) {
    return NewsListBuilder(future: future);
  }
}
