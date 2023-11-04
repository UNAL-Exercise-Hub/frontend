import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front_end_unworkout/routines/domain/use_cases/get_routine_use_case.dart';

part 'routine_event.dart';

part 'routine_state.dart';

part 'routine_bloc.freezed.dart';

class RoutineBloc extends Bloc<RoutineEvent, RoutineState>{

  final GetRoutineUseCase getRoutineUseCase;

  RoutineBloc({
    required this.getRoutineUseCase,
  }): super (const RoutineState.initial()) {
    on<RoutineEvent>((event, emit) async {
      await event.map(
          getRoutine: (event) async => await _getRoutine(event,emit),
          deleteRoutine: (event) async => await _deleteRoutine(event,emit)
      );
    });
  }

  Future<void> _getRoutine(GetRoutine event, Emitter<RoutineState> emit) async{
    emit(const RoutineState.loading());
    try{
      await getRoutineUseCase.call(ID: event.ID);
      emit(const RoutineState.doneRoutine());
    } catch (e){
      emit(const RoutineState.error());
    }
  }

  Future<void> _deleteRoutine(DeleteRoutine event, Emitter<RoutineState> emit) async {
    emit(const RoutineState.loading());
    //TODO
  }

}