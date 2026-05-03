import 'package:flutter/material.dart';
import '../models/news_model.dart';
import 'news_card.dart';

class SliverNewsCard extends StatelessWidget {
  const SliverNewsCard({super.key, required this.newsList});

  final List<NewsModel> newsList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return NewsCard(newDetails: newsList[index],);
          },
          childCount: newsList.length,
        )
    );

  }
}