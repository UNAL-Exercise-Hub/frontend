import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:front_end_unworkout/login/domain/use_cases/login_use_case.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{

  final LoginUseCase loginUseCase;

  LoginBloc({
    required this.loginUseCase,
    }): super (const LoginState.initial()){
    on<LoginEvent>((event,emit) async {
      await event.map(login: (event) async => await _loginEvent(event,emit));
    });
  }

  Future<void> _loginEvent(Login event, Emitter<LoginState> emit) async{
    emit(const LoginState.loading());
    await loginUseCase.call(email: event.email, password: event.password);
  }
}