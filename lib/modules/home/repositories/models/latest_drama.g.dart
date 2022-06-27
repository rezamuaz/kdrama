// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_drama.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestDrama _$LatestDramaFromJson(Map<String, dynamic> json) => LatestDrama(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LatestDramaToJson(LatestDrama instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      page: json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
    )..posts = (json['posts'] as List<dynamic>?)
        ?.map((e) => Posts.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'page': instance.page,
      'posts': instance.posts,
    };

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      now: json['now'] as int?,
      total: json['total'] as int?,
      prev: json['prev'] as int?,
      next: json['next'] as int?,
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'now': instance.now,
      'total': instance.total,
      'prev': instance.prev,
      'next': instance.next,
    };

Posts _$PostsFromJson(Map<String, dynamic> json) => Posts(
      id: json['id'] as int?,
      nativeTitle: json['nativeTitle'] as String?,
      image: json['image'] as String?,
      synopsis: json['synopsis'] as String?,
      score: json['score'] as String?,
      duration: json['duration'] as String?,
      director: json['director'] as String?,
      keyword: json['keyword'] as String?,
      taxonomy: (json['taxonomy'] as List<dynamic>?)
          ?.map((e) => Taxonomy.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..title = json['title'] as String?;

Map<String, dynamic> _$PostsToJson(Posts instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'nativeTitle': instance.nativeTitle,
      'image': instance.image,
      'synopsis': instance.synopsis,
      'duration': instance.duration,
      'score': instance.score,
      'director': instance.director,
      'keyword': instance.keyword,
      'taxonomy': instance.taxonomy,
    };

Taxonomy _$TaxonomyFromJson(Map<String, dynamic> json) => Taxonomy(
      id: json['id'] as int?,
      label: json['label'] as String?,
      term: json['term'] as String?,
    );

Map<String, dynamic> _$TaxonomyToJson(Taxonomy instance) => <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'term': instance.term,
    };
