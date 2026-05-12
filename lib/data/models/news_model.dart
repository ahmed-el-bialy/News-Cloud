import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsResponse {
  final String? status;

  @JsonKey(name: "results")
  final List<NewsModel>? results;

  NewsResponse({this.status, this.results});

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

@JsonSerializable()
class NewsModel {
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @JsonKey(name: "title")
  final String headLine;
  @JsonKey(name: "description")
  final String? subHeadLine;
  @JsonKey(name: "link")
  final String newsUrl;

  NewsModel({
    required this.imageUrl,
    required this.headLine,
    required this.subHeadLine,
    required this.newsUrl,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}