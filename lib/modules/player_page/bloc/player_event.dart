part of 'player_bloc.dart';

abstract class PlayerEvent extends Equatable {
  const PlayerEvent();

  @override
  List<Object> get props => [];
}

class PlayerLoadEvent extends PlayerEvent {
  @override
  List<Object> get props => [];
}
