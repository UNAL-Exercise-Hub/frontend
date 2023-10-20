import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front_end_unworkout/routines/domain/use_cases/routine_use_cases.dart';

part 'routine_event.dart';

part 'routine_state.dart';

part 'routine_bloc.freezed.dart';

class RoutineBloc extends Bloc<RoutineEvent, RoutineState>{

  final RoutineUseCase routineUseCase;

  RoutineBloc({
    required this.routineUseCase,
  }): super (const RoutineState.initial()) {
    on<RoutineEvent>((event, emit) async {
      await event.map(getRoutine: (event) async => await _getRoutine(event,emit));
    });
  }

  Future<void> _getRoutine(GetRoutine event, Emitter<RoutineState> emit) async{
    await routineUseCase.call();
  }

}