part of 'recommendation_bloc.dart';

abstract class RecommendationEvent extends Equatable {
  const RecommendationEvent();
}

class RecommendationLoadEvent extends RecommendationEvent {
  @override
  List<Object?> get props => [];
}
