import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/data/repo/repo.dart';

import '../data/models/news_model.dart';
import '../data/services/web_services.dart';
import 'news_list_builder.dart';

class BreakingNewsList extends StatefulWidget {
  const BreakingNewsList({super.key});

  @override
  State<BreakingNewsList> createState() => _BreakingNewsListState();
}

class _BreakingNewsListState extends State<BreakingNewsList> {
  late Future<List<NewsModel>> newsFuture;

  @override
  void initState() {
    super.initState();
    final dio = Dio();
    final webServices = WebServices(dio);
    final repo = Repo(webServices);

    newsFuture = repo.getTopNews();
  }

  @override
  Widget build(BuildContext context) {
    return NewsListBuilder(future: newsFuture);
  }
}
