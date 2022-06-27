import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kdrama/modules/home/repositories/home_respository.dart';
import 'package:kdrama/modules/home/repositories/models/rekomendasi_model.dart';

part 'recommendation_event.dart';
part 'recommendation_state.dart';

class RecommendationBloc
    extends Bloc<RecommendationEvent, RecommendationState> {
  final HomeRepository homeRepository;
  RecommendationBloc({required this.homeRepository})
      : super(RecommendationLoading()) {
    on<RecommendationLoadEvent>((event, emit) async {
      emit(RecommendationLoading());
      final rekomendasi = await homeRepository.service.getRecommendation();
      emit(RecommendationLoaded(rekomendasi));
    });
  }
}
