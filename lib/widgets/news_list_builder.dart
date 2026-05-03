import 'package:flutter/material.dart';

import '../models/news_model.dart';
import 'sliver_news_card.dart';

class NewsListBuilder extends StatelessWidget {
  const NewsListBuilder({super.key, required this.future});

  final Future<List<NewsModel>> future;

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
          return SliverNewsCard(newsList: snapshot.data!);
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
