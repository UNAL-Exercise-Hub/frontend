import 'package:front_end_unworkout/login/domain/repositories/login_repository.dart';

class LoginUseCase {
  final ILoginRepository _iLoginRepository;

  LoginUseCase(this._iLoginRepository);

  Future<void> call({String? email, String? password}){
    return _iLoginRepository.login(email!, password!);
  }
}
