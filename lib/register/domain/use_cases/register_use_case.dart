import 'package:front_end_unworkout/register/domain/repositories/register_repository.dart';

class RegisterUseCase {
  final IRegisterRepository _iRegisterRepository;

  RegisterUseCase(this._iRegisterRepository);

  Future<void> call({int? id_usuario,  String? nombres, String? apellidos, String? fecha_nacimiento, String? sexo, BigInt? cel, String? email}){
    return _iRegisterRepository.register(id_usuario!, nombres!, apellidos!, fecha_nacimiento!, sexo!, cel!, email!);
  }
}
