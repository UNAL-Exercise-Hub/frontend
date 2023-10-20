import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/base/presentation/widgets/loading_indicator.dart';
import 'package:front_end_unworkout/register/presentation/bloc/register_bloc.dart';
import 'package:get_it/get_it.dart';

class RegisterPage extends StatelessWidget{
  const RegisterPage({Key? key}): super (key: key);

  @override
  Widget build(BuildContext context){
    return BlocProvider<RegisterBloc>(
      create: (context) => GetIt.instance<RegisterBloc>(),
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Registrate"),
            backgroundColor: const Color(0xFFD60909),
          ),
        backgroundColor: Colors.white,
        body: BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state){
              return state.when(
                initial: (){
                  //TODO: inicializar registerView
                  return const Text("jeje");
                },
                loading: () => LoadingIndicator(),
                doneRegister: (){
                  /*Navigator.push(context, MaterialPageRoute(builder: (context) => RoutinesPage()));*/
                  return const Text("");
                },
                error: () =>
                  const Text("error")
              );
            }
        )
      )
    );
  }
}