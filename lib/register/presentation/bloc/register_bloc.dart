import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:front_end_unworkout/register/domain/use_cases/register_use_case.dart';

part 'register_event.dart';

part 'register_state.dart';

part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState>{

  final RegisterUseCase registerUseCase;

  RegisterBloc({
    required this.registerUseCase,
    }): super (const RegisterState.initial()){
    on<RegisterEvent>((event,emit) async {
      await event.map(register: (event) async => await _registerEvent(event,emit));
    });
  }

  Future<void> _registerEvent(Register event, Emitter<RegisterState> emit) async{
    emit(const RegisterState.loading());
    try {
      emit(RegisterState.loading());
      print("All good");
      print(event.email);
      await registerUseCase.call(email: event.email, apellidos: event.apellidos, nombres: event.nombres, cel: event.cel, fecha_nacimiento: event.fecha_nacimiento, password: event.password, sexo: event.sexo);
      emit(const RegisterState.doneRegister());
    } catch (e){
      print("Error en registerUseCase");
      emit(const RegisterState.error());
    }
  }
}