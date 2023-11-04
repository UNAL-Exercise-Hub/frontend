part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent{
  const factory RegisterEvent.register(
      String nombres,
      String apellidos,
      String fecha_nacimiento,
      String sexo,
      String cel,
      String email,
      String password) = Register;
}
