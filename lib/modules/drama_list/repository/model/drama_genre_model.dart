import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drama_genre_model.g.dart';

@JsonSerializable()
class DramaGenreModel extends Equatable {
	final String? id;
	final String? value;

	const DramaGenreModel({this.id, this.value});

	factory DramaGenreModel.fromJson(Map<String, dynamic> json) {
		return _$DramaGenreModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$DramaGenreModelToJson(this);

	@override
	List<Object?> get props => [id, value];
}
