import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kdrama/modules/home/repositories/home_respository.dart';
import 'package:kdrama/modules/home/repositories/models/episode_terbaru_model.dart';

part 'episode_terbaru_event.dart';
part 'episode_terbaru_state.dart';

class EpisodeTerbaruBloc
    extends Bloc<EpisodeTerbaruEvent, EpisodeTerbaruState> {
  final HomeRepository homeRepository;
  EpisodeTerbaruBloc({required this.homeRepository})
      : super(EpisodeTerbaruLoading()) {
    on<EpisodeTerbaruLoadEvent>((event, emit) async {
      emit(EpisodeTerbaruLoading());
      final episodeTerbaru = await homeRepository.service.getUpdateEpisode();
      emit(EpisodeTerbaruLoaded(episodeTerbaru));
    });
  }
}
