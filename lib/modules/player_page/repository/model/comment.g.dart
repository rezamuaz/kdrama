// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      name: json['name'] as String?,
      pic: json['pic'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'name': instance.name,
      'pic': instance.pic,
      'message': instance.message,
    };
