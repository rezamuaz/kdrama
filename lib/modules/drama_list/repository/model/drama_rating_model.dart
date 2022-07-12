import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drama_rating_model.g.dart';

@JsonSerializable()
class DramaRatingModel extends Equatable {
	final String? id;
	final String? value;

	const DramaRatingModel({this.id, this.value});

	factory DramaRatingModel.fromJson(Map<String, dynamic> json) {
		return _$DramaRatingModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$DramaRatingModelToJson(this);

	@override
	List<Object?> get props => [id, value];
}
