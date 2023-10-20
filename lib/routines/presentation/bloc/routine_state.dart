part of "routine_bloc.dart";

@freezed
class RoutineState with _$RoutineState{
  const factory RoutineState.initial() = Initial;
  const factory RoutineState.loading() = Loading;
  const factory RoutineState.doneRoutine() = DoneRoutine;
  const factory RoutineState.error() = Error;
}