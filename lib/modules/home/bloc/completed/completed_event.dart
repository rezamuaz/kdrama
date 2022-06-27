part of 'completed_bloc.dart';

abstract class CompletedEvent extends Equatable {
  const CompletedEvent();

  @override
  List<Object> get props => [];
}

class CompletedLoadEvent extends CompletedEvent {
  @override
  List<Object> get props => [];
}
