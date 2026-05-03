import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../services/news_services.dart';
import 'news_list_builder.dart';


class BreakingNewsList extends StatefulWidget {
  const BreakingNewsList({super.key});

  @override
  State<BreakingNewsList> createState() => _BreakingNewsListState();
}

class _BreakingNewsListState extends State<BreakingNewsList> {
  late Future<List<NewsModel>> future;

  @override
  void initState() {
    super.initState();
    setState(() {
      getNews();
    });
  }

  void getNews() {
    future = NewsServices().getTopNews();
  }

  @override
  Widget build(BuildContext context) {
    return NewsListBuilder(future: future);
  }
}
