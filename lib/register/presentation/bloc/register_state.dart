part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState{
  const factory RegisterState.initial() = Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.doneRegister() = DoneRegister;
  const factory RegisterState.error() = Error;
}