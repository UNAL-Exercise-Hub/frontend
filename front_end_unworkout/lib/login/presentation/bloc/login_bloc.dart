import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc(): super (const LoginState.doneLogin()){
    on<LoginEvent>((event,emit) async {
      await event.map(login: (event) async => await _loginEvent(event,emit));
    });
  }

  Future<void> _loginEvent(Login event, Emitter<LoginState> emit) async{

  }
}