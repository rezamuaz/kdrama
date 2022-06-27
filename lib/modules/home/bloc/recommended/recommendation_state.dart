part of 'recommendation_bloc.dart';

abstract class RecommendationState extends Equatable {
  const RecommendationState();
}

class RecommendationLoading extends RecommendationState {
  @override
  List<Object?> get props => [];
}

class RecommendationLoaded extends RecommendationState {
  final List<RekomendasiModel> rekomendasi;

  const RecommendationLoaded(this.rekomendasi);

  @override
  List<Object?> get props => [rekomendasi];
}

class RecommendationError extends RecommendationState {
  final String status = "error";
  @override
  List<Object?> get props => [status];
}
