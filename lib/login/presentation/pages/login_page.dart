import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/base/presentation/widgets/loading_indicator.dart';
import 'package:front_end_unworkout/login/presentation/bloc/login_bloc.dart';
import 'package:front_end_unworkout/login/presentation/views/login_view.dart';
import 'package:front_end_unworkout/routines/presentation/pages/routine_page.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}): super (key: key);

  @override
  Widget build(BuildContext context){
    return BlocProvider<LoginBloc>(
      create: (context) => GetIt.instance<LoginBloc>(),
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Inicia Sesión"),
            backgroundColor: const Color(0xFFD60909),
          ),
        backgroundColor: Colors.white,
        body: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state){
              return state.when(
                initial: (){
                  return LoginView(onPressed: (String email, String password){
                    context.read<LoginBloc>().add(LoginEvent.login(email, password));
                  });
                },
                loading: () => LoadingIndicator(),
                doneLogin: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RoutinePage()));
                  print("logeado");
                  return const Text("");
                },
                error: () {
                  print("No se pudo logear");
                  return const Text("error");
                }
              );
            }
        )
      )
    );
  }
}