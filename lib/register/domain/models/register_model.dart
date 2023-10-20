class RegisterModel {
  final int id_usuario;
  final String nombres;
  final String apellidos;
  final String fecha_nacimiento;
  final String sexo;
  final BigInt cel;
  final String email;
  final String password;

  RegisterModel({required this.id_usuario, required this.nombres, required this.apellidos, required this.fecha_nacimiento, required this.sexo, required this.cel, required this.email, required this.password});

}
