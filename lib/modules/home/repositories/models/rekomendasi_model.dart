import 'package:json_annotation/json_annotation.dart';
part 'rekomendasi_model.g.dart';

@JsonSerializable()
class RekomendasiModel {
  int? id;
  String? title;
  String? image;

  RekomendasiModel({this.id, this.title, this.image});

  factory RekomendasiModel.fromJson(Map<String, dynamic> json) =>
      _$RekomendasiModelFromJson(json);

  Map<String, dynamic> toJson() => _$RekomendasiModelToJson(this);
}
