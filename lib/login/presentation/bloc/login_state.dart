part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState.initial() = Initial;
  const factory LoginState.doneLogin() = DoneLogin;
}