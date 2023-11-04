import 'package:front_end_unworkout/register/domain/repositories/register_repository.dart';

class RegisterUseCase {
  final IRegisterRepository _iRegisterRepository;

  RegisterUseCase(this._iRegisterRepository);

  Future<void> call({String? nombres, String? apellidos, String? fecha_nacimiento, String? sexo, String? cel, String? email, String? password}){
    return _iRegisterRepository.register(nombres!, apellidos!, fecha_nacimiento!, sexo!, cel!, email!, password!);
  }
}
