abstract class IRegisterRepository{
   Future<void> register(int id_usuario, String nombres, String apellidos, String fecha_nacimiento, String sexo, BigInt cel, String email);
}