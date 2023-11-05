//Aqui va toda la vista y componentes visuales de la app
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/login/presentation/bloc/login_bloc.dart';

class LoginView extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();
  final void Function(String, String) onPressed;
  final void Function() onPressed2;

  LoginView({Key? key, required this.onPressed, required this.onPressed2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/logo.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: TextField(
            controller: email,
            decoration: InputDecoration(
              labelText: "Correo electronico",
              hintText: "Ingrese sus nombres",
              //contentPadding: const EdgeInsets.symmetric(vertical: 4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
          child: TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Contraseña",
              hintText: "Ingrese su contraseña",
              //contentPadding: const EdgeInsets.symmetric(vertical: 4),
            ),
          ),
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centrar los botones horizontalmente
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0,
                  top: 5.0,
                  bottom: 5.0,
                  right:
                      4.0), // Ajusta el margen derecho para que el espacio total sea 8px
              child: ElevatedButton(
                child: const Text("Ingresar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD60909),
                ),
                onPressed: () {
                  onPressed(email.value.text, password.value.text);
                },
              ),
            ),
            SizedBox(width: 8.0), // Espacio de 8px entre los botones
            Padding(
              padding: const EdgeInsets.only(
                  left: 4.0,
                  top: 5.0,
                  bottom: 5.0,
                  right:
                      5.0), // Ajusta el margen izquierdo para que el espacio total sea 8px
              child: ElevatedButton(
                child: const Text("Registrarse"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD60909),
                ),
                onPressed: () {
                  onPressed2();
                },
              ),
            ),
          ],
        )
      ],
    ));
  }
}
