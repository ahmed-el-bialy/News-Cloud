import 'package:dio/dio.dart';
import '../helper/constants/strings.dart';
import '../models/news_model.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<NewsModel>> getTopNews() async {
    try {
      Response response = await dio.get(
        "$baseUrl/latest?apikey=$apiKey&country=eg,ir,ps,il,sa&language=ar,en&category=breaking,top,world",
      );
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["results"];

      List<NewsModel> newsArticles = [];

      for (var element in articles) {
        NewsModel newsItem = NewsModel.fromJson(element);
        newsArticles.add(newsItem);
      }
      return newsArticles;
    } catch (e) {
      return [];
    }
  }

  Future<List<NewsModel>> getCategoryNews({
    required String newsCategory,
    String country = "",
  }) async {
    try {
      Response response = await dio.get(
        "$baseUrl/latest?apikey=$apiKey&language=ar&category=$newsCategory$country",
      );
      Map jsonData = response.data;
      List<dynamic> articles = jsonData["results"];

      List<NewsModel> newsArticles = [];

      for (var element in articles) {
        NewsModel newsItem = NewsModel.fromJson(element);
        newsArticles.add(newsItem);
      }
      return newsArticles;
    } catch (e) {
      return [];
    }
  }
}
