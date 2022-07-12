import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drama_country_model.g.dart';

@JsonSerializable()
class DramaCountryModel extends Equatable {
  final String? country;
  final String? value;

  const DramaCountryModel({required this.country, required this.value});

  factory DramaCountryModel.fromJson(Map<String, dynamic> json) {
    return _$DramaCountryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DramaCountryModelToJson(this);

  @override
  List<Object?> get props => [country, value];
}
