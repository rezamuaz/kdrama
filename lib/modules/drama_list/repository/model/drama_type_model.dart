import 'package:json_annotation/json_annotation.dart';
part 'drama_type_model.g.dart';

@JsonSerializable()
class DramaTypeModel {
  int? id;
  String? value;

  DramaTypeModel({this.id, this.value});

  factory DramaTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DramaTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$DramaTypeModelToJson(this);
}
