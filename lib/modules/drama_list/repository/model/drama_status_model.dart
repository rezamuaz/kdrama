import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drama_status_model.g.dart';

@JsonSerializable()
class DramaStatusModel extends Equatable {
	final String? id;
	final String? value;

	const DramaStatusModel({this.id, this.value});

	factory DramaStatusModel.fromJson(Map<String, dynamic> json) {
		return _$DramaStatusModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$DramaStatusModelToJson(this);

	@override
	List<Object?> get props => [id, value];
}
