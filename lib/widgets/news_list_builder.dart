import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../services/news_services.dart';
import 'news_list_widget.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
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
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.isEmpty) {
            return const SliverToBoxAdapter(
              child: Center(child: Text('There is no news for now')),
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
              child: CircularProgressIndicator(color: Colors.orange[700]),
            ),
          );
        }
      },
    );
  }
}
