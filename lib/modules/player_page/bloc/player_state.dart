part of 'player_bloc.dart';

abstract class PlayerState extends Equatable {
  const PlayerState();

  @override
  List<Object> get props => [];
}

class InitialState extends PlayerState {
  @override
  List<Object> get props => [];
}

//*TODO: Loading Data Player Page (Loading Process)
class EpisodeDetailLoading extends PlayerState {
  @override
  List<Object> get props => [];
}

//*TODO: Get Data Player Page (Loaded)
class EpisodeDetailLoaded extends PlayerState {
  final PlayerModel episodeDetail;
  const EpisodeDetailLoaded(this.episodeDetail);
  @override
  List<Object> get props => [episodeDetail];
}

//*TODO: Error Handle to Get Data (Error)
class EpisodeDetailError extends PlayerState {
  final String status = "error";

  @override
  List<Object> get props => [status];
}
