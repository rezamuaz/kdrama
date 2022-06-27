import 'package:json_annotation/json_annotation.dart';
part 'completed_model.g.dart';

@JsonSerializable()
class CompletedModel {
  int? id;
  String? title;
  String? image;
  String? views;

  CompletedModel({this.id, this.title, this.image, this.views});

  factory CompletedModel.fromJson(Map<String, dynamic> json) =>
      _$CompletedModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompletedModelToJson(this);
}
