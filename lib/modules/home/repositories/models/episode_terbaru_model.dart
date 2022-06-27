import 'package:json_annotation/json_annotation.dart';
part 'episode_terbaru_model.g.dart';

@JsonSerializable()
class EpisodeTerbaruModel {
  int? id;
  String? title;
  String? image;
  String? views;

  EpisodeTerbaruModel({this.id, this.title, this.image, this.views});

  factory EpisodeTerbaruModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeTerbaruModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeTerbaruModelToJson(this);
}
