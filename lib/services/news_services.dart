import 'package:dio/dio.dart';
import '../models/news_model.dart';

class NewsServices {
  final Dio dio = Dio();
  final String baseUrl = "https://newsdata.io/api/1";
  final String apiKey = "pub_a88236a36d3f44aabba52075fa0a7602&";

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
