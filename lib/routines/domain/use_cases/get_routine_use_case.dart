import 'package:front_end_unworkout/routines/domain/reposittories/routine_repository.dart';

class GetRoutineUseCase {
  final IRoutineRepository _iRoutineRepository;

  GetRoutineUseCase(this._iRoutineRepository);

  Future<void> call({int? ID}){
    return _iRoutineRepository.getRoutine(ID!);
  }
}
