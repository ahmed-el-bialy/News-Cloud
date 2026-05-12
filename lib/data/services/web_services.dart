import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../helper/constants/strings.dart';
import '../models/news_model.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @GET("latest")
  Future<NewsResponse> getTopNews({
    @Query('apikey') required String apiKey,
    @Query('country') String country = "eg,ir,ps,il,sa",
    @Query('language') String language = "ar",
    @Query('category') String category = "breaking,top,world",
  });

  @GET("latest")
  Future<NewsResponse> getNewsByCategory({
    @Query('apikey') required String apiKey,
    @Query('category') required String newsCategories,
    @Query('language') String language = "ar",
  });

  @GET("latest")
  Future<NewsResponse> getCountriesNewsByCategory({
    @Query('apikey') required String apiKey,
    @Query('category') required String newsCategory,
    @Query('language') String language = "ar",
    @Query('country') required String country,
  });
}
