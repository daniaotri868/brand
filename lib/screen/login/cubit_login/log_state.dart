part of 'log_cubit.dart';

@immutable
abstract class LogState {}

class LogInitial extends LogState {}
class LogSuccessfulState extends LogState {}
class LogLoadingState extends LogState {}
class LogErrorState extends LogState {
  final String error;
  LogErrorState(this.error);
}
