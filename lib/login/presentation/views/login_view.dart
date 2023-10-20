//Aqui va toda la vista y componentes visuales de la app
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/login/presentation/bloc/login_bloc.dart';

class LoginView extends StatelessWidget{
  final email = TextEditingController();
  final password = TextEditingController();
  final void Function(String, String) onPressed;

  LoginView({Key? key, required this.onPressed}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 4),
                hintText: 'Email',
              ),
            ),
          ),
          Material(
            child: TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 4),
                hintText: 'Contraseña',
              ),
            ),
          ),
          ElevatedButton(
              child: const Text("Ingresar"),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD60909)),
              onPressed: (){
                onPressed( email.value.text, password.value.text);
              })
        ],
      )
    );
  }

}