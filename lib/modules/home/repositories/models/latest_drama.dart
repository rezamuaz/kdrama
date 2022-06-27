import 'package:json_annotation/json_annotation.dart';

part 'latest_drama.g.dart';

@JsonSerializable()
class LatestDrama {
  int? status;
  String? msg;
  Data? data;

  LatestDrama({this.status, this.msg, this.data});

  @override
  String toString() {
    return 'LatestDrama{status: $status, msg: $msg, data: $data}';
  }

  factory LatestDrama.fromJson(Map<String, dynamic> json) =>
      _$LatestDramaFromJson(json);

  Map<String, dynamic> toJson() => _$LatestDramaToJson(this);
}

@JsonSerializable()
class Data {
  Page? page;
  List<Posts>? posts;

  Data({this.page});

  @override
  String toString() {
    return 'Data{page: $page, posts: $posts}';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Page {
  int? now;
  int? total;
  int? prev;
  int? next;

  Page({this.now, this.total, this.prev, this.next});

  @override
  String toString() {
    return 'Page{now: $now, total: $total, prev: $prev, next: $next}';
  }

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable()
class Posts {
  int? id;
  String? title;
  String? nativeTitle;
  String? image;
  String? synopsis;
  String? duration;
  String? score;
  String? director;
  String? keyword;
  List<Taxonomy>? taxonomy;

  Posts({
    this.id,
    this.nativeTitle,
    this.image,
    this.synopsis,
    this.score,
    this.duration,
    this.director,
    this.keyword,
    this.taxonomy,
  });

  @override
  String toString() {
    return 'posts{id: $id, title: $title, native_title: $nativeTitle, image: $synopsis, duration: $duration, score: $score, director: $director, keyword: $keyword, taxonomy: $taxonomy}';
  }

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);

  Map<String, dynamic> toJson() => _$PostsToJson(this);
}

@JsonSerializable()
class Taxonomy {
  int? id;
  String? label;
  String? term;
  Taxonomy({this.id, this.label, this.term});
  @override
  String toString() {
    return 'taxonomy{id: $id, label: $label, term: $term}';
  }

  factory Taxonomy.fromJson(Map<String, dynamic> json) => _$TaxonomyFromJson(json);

  Map<String, dynamic> toJson() => _$TaxonomyToJson(this);
}
