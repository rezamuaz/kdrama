// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletedModel _$CompletedModelFromJson(Map<String, dynamic> json) =>
    CompletedModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      views: json['views'] as String?,
    );

Map<String, dynamic> _$CompletedModelToJson(CompletedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'views': instance.views,
    };
