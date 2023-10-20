part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent{
  const factory RegisterEvent.register(
      int id_usuario,
      String nombres,
      String apellidos,
      String fecha_nacimiento,
      String sexo,
      BigInt cel,
      String email,
      String password) = Register;
}
