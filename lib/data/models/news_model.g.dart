// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) => NewsResponse(
  status: json['status'] as String?,
  results: (json['results'] as List<dynamic>?)
      ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$NewsResponseToJson(NewsResponse instance) =>
    <String, dynamic>{'status': instance.status, 'results': instance.results};

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
  imageUrl: json['image_url'] as String?,
  headLine: json['title'] as String,
  subHeadLine: json['description'] as String?,
  newsUrl: json['link'] as String,
);

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
  'image_url': instance.imageUrl,
  'title': instance.headLine,
  'description': instance.subHeadLine,
  'link': instance.newsUrl,
};
