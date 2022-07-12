import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'url.g.dart';

@JsonSerializable()
class Url extends Equatable {
	final String? id;
	final String? res;
	final String? url;

	const Url({this.id, this.res, this.url});

	factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);

	Map<String, dynamic> toJson() => _$UrlToJson(this);

	@override
	List<Object?> get props => [id, res, url];
}
