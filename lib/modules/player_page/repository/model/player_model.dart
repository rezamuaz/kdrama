import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'comment.dart';
import 'url.dart';

part 'player_model.g.dart';

@JsonSerializable()
class PlayerModel extends Equatable {
	final String? episode;
	final String? title;
	final String? date;
	final String? views;
	final List<Url>? url;
	final List<Comment>? comments;

	const PlayerModel({
		this.episode, 
		this.title, 
		this.date, 
		this.views, 
		this.url, 
		this.comments, 
	});

	factory PlayerModel.fromJson(Map<String, dynamic> json) {
		return _$PlayerModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$PlayerModelToJson(this);

	@override
	List<Object?> get props => [episode, title, date, views, url, comments];
}
