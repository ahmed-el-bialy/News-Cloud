import 'package:flutter/material.dart';
import '../models/news_model.dart';
import 'news_card_widget.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({super.key, required this.newsList});

  final List<NewsModel> newsList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return NewsCardWidget(newDetails: newsList[index],);
          },
          childCount: newsList.length,
        )
    );

  }
}