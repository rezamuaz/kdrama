import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kdrama/modules/player_page/repository/model/player_model.dart';
import 'package:kdrama/modules/player_page/repository/services/player_repository.dart';

part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final PlayerRepository playerRepository;
  PlayerBloc({required this.playerRepository}) : super(EpisodeDetailLoading()) {
    on<PlayerLoadEvent>((event, emit) async {
      // TODO: implement event handler
      emit(EpisodeDetailLoading());
      final episodeDetail = await playerRepository.service.getDetail();
      emit(EpisodeDetailLoaded(episodeDetail));
    });
  }
}
