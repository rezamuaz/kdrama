// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerModel _$PlayerModelFromJson(Map<String, dynamic> json) => PlayerModel(
      episode: json['episode'] as String?,
      title: json['title'] as String?,
      date: json['date'] as String?,
      views: json['views'] as String?,
      url: (json['url'] as List<dynamic>?)
          ?.map((e) => Url.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlayerModelToJson(PlayerModel instance) =>
    <String, dynamic>{
      'episode': instance.episode,
      'title': instance.title,
      'date': instance.date,
      'views': instance.views,
      'url': instance.url,
      'comments': instance.comments,
    };
