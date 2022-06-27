part of 'episode_terbaru_bloc.dart';

abstract class EpisodeTerbaruState extends Equatable {
  const EpisodeTerbaruState();

  @override
  List<Object> get props => [];
}

class EpisodeTerbaruLoading extends EpisodeTerbaruState {
  @override
  List<Object> get props => [];
}

class EpisodeTerbaruLoaded extends EpisodeTerbaruState {
  final List<EpisodeTerbaruModel> episodeTerbaru;

  const EpisodeTerbaruLoaded(this.episodeTerbaru);
  @override
  List<Object> get props => [episodeTerbaru];
}

class EpisodeTerbaruError extends EpisodeTerbaruState {
  final String status = "error";

  @override
  List<Object> get props => [status];
}
