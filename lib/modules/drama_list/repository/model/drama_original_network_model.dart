import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drama_original_network_model.g.dart';

@JsonSerializable()
class DramaOriginalNetworkModel extends Equatable {
	final String? id;
	final String? value;

	const DramaOriginalNetworkModel({this.id, this.value});

	factory DramaOriginalNetworkModel.fromJson(Map<String, dynamic> json) {
		return _$DramaOriginalNetworkModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$DramaOriginalNetworkModelToJson(this);

	@override
	List<Object?> get props => [id, value];
}
