import 'package:front_end_unworkout/routines/domain/reposittories/routine_repository.dart';

class RoutineUseCase {
  final IRoutineRepository _iRoutineRepository;

  RoutineUseCase(this._iRoutineRepository);

  Future<void> call({int? ID}){
    return _iRoutineRepository.getRoutine(ID!);
  }
}
