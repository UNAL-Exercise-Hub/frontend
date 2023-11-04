import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/base/presentation/widgets/footer.dart';
import 'package:front_end_unworkout/base/presentation/widgets/loading_indicator.dart';
import 'package:front_end_unworkout/login/presentation/pages/login_page.dart';
import 'package:front_end_unworkout/register/presentation/bloc/register_bloc.dart';
import 'package:front_end_unworkout/register/presentation/views/register_view.dart';
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
                  return RegisterView(onPressed: (String nombres, String apellidos, String fecha_nacimiento, String sexo, String cel, String email, String password){
                    context.read<RegisterBloc>().add(RegisterEvent.register(nombres, apellidos, fecha_nacimiento, sexo, cel, email, password));
                  });
                },
                loading: () => LoadingIndicator(),
                doneRegister: (){
                  LoadingIndicator();
                  Navigator.of(context).pop();
                  return const Text("");
                },
                error: () {
                    Navigator.of(context).pop();
                    return const Text("");
                  }
              );
            }
        ),
        bottomNavigationBar: Footer(),
      )
    );
  }
}