import 'package:front_end_unworkout/login/data/repositories/login_repository_imp.dart';
import 'package:front_end_unworkout/login/domain/repositories/login_repository.dart';
import 'package:front_end_unworkout/login/domain/use_cases/login_use_case.dart';
import 'package:front_end_unworkout/login/presentation/bloc/login_bloc.dart';
import 'package:front_end_unworkout/register/data/repositories/register_repository_imp.dart';
import 'package:front_end_unworkout/register/domain/repositories/register_repository.dart';
import 'package:front_end_unworkout/register/domain/use_cases/register_use_case.dart';
import 'package:front_end_unworkout/register/presentation/bloc/register_bloc.dart';
import 'package:front_end_unworkout/routines/data/repositories/routine_repository_imp.dart';
import 'package:front_end_unworkout/routines/domain/reposittories/routine_repository.dart';
import 'package:front_end_unworkout/routines/domain/use_cases/routine_use_cases.dart';
import 'package:front_end_unworkout/routines/presentation/bloc/routine_bloc.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector.registerSingleton<ILoginRepository>(LoginRepositoryImp());

  injector.registerSingleton(LoginUseCase(injector()));

  injector.registerFactory(() => LoginBloc(
    loginUseCase: injector(),
  ));

  injector.registerSingleton<IRoutineRepository>(RoutineRepositoryImp());

  injector.registerSingleton(RoutineUseCase(injector()));

  injector.registerFactory(() => RoutineBloc(
      routineUseCase: injector()
  ));

  injector.registerSingleton<IRegisterRepository>(RegisterRepositoryImp());

  injector.registerSingleton(RegisterUseCase(injector()));

  injector.registerFactory(() => RegisterBloc(
      registerUseCase: injector()
  ));
}