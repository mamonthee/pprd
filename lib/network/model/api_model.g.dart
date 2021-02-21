// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiModel _$ApiModelFromJson(Map<String, dynamic> json) {
  return ApiModel(
    albumId: json['albumId'] as int,
    id: json['id'] as int,
    title: json['title'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String,
  )..url = json['url'] as String;
}

Map<String, dynamic> _$ApiModelToJson(ApiModel instance) => <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
