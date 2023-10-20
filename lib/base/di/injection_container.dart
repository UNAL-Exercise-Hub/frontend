import 'package:front_end_unworkout/login/data/repositories/login_repository_imp.dart';
import 'package:front_end_unworkout/login/domain/repositories/login_repository.dart';
import 'package:front_end_unworkout/login/domain/use_cases/login_use_case.dart';
import 'package:front_end_unworkout/login/presentation/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector.registerSingleton<ILoginRepository>(LoginRepositoryImp());

  injector.registerSingleton(LoginUseCase(injector()));

  injector.registerFactory(() => LoginBloc(
    loginUseCase: injector(),
  ));
}