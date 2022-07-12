import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment extends Equatable {
  final String? name;
  final String? pic;
  final String? message;

  const Comment({this.name, this.pic, this.message});

  factory Comment.fromJson(Map<String, dynamic> json) {
    return _$CommentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CommentToJson(this);

  @override
  List<Object?> get props => [name, pic, message];
}
