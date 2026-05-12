import 'package:news_cloud/data/models/news_model.dart';
import 'package:news_cloud/data/services/web_services.dart';
import 'package:news_cloud/helper/constants/strings.dart';

class Repo {
  final WebServices webServices;

  Repo(this.webServices);

  Future<List<NewsModel>> getTopNews() async {
    var response = await webServices.getTopNews(apiKey: myApiKey);

    return response.results ?? [];
  }

  Future<List<NewsModel>> getNewsByCategory({
    required String newsCategory,
  }) async {
    var response = await webServices.getNewsByCategory(
      apiKey: myApiKey,
      newsCategories: newsCategory,
    );

    return response.results ?? [];
  }




  Future<List<NewsModel>> getCountriesNewsByCategory({
    required String newsCategory,
    required String country,
  }) async {
    var response = await webServices.getCountriesNewsByCategory(
      apiKey: myApiKey,
      newsCategory: newsCategory,
      country: country,
    );

    return response.results ?? [];
  }
}
