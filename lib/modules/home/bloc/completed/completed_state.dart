part of 'completed_bloc.dart';

abstract class CompletedState extends Equatable {
  const CompletedState();

  @override
  List<Object> get props => [];
}

class CompletedLoading extends CompletedState {
  @override
  List<Object> get props => [];
}

class CompletedLoaded extends CompletedState {
  final List<CompletedModel> completed;

  const CompletedLoaded(this.completed);
  @override
  List<Object> get props => [completed];
}

class CompletedError extends CompletedState {
  final String status = "error";

  @override
  List<Object> get props => [status];
}
