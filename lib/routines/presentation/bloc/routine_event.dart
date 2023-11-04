part of "routine_bloc.dart";

@freezed
class RoutineEvent with _$RoutineEvent{
  const factory RoutineEvent.getRoutine(int ID) = GetRoutine;
  const factory RoutineEvent.deleteRoutine(int ID) = DeleteRoutine;
}