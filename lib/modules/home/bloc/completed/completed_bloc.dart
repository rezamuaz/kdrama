import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kdrama/modules/home/repositories/home_respository.dart';
import 'package:kdrama/modules/home/repositories/models/completed_model.dart';

part 'completed_event.dart';
part 'completed_state.dart';

class CompletedBloc extends Bloc<CompletedEvent, CompletedState> {
  final HomeRepository homeRepository;
  CompletedBloc({required this.homeRepository}) : super(CompletedLoading()) {
    on<CompletedLoadEvent>((event, emit) async {
      emit(CompletedLoading());
      final completed = await homeRepository.service.getCompleted();
      emit(CompletedLoaded(completed));
    });
  }
}
