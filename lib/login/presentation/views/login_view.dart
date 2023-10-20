//Aqui va toda la vista y componentes visuales de la app
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front_end_unworkout/login/presentation/bloc/login_bloc.dart';
import 'package:front_end_unworkout/base/presentation/widgets/footer.dart';

class LoginView extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();
  final onPressed;

  LoginView({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              width: 250,
              height: 250,
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
            ElevatedButton(
                child: const Text("Ingresar"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD60909)),
                onPressed: this.onPressed),
            ElevatedButton(
                child: const Text("Registrarse"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD60909)),
                onPressed: this.onPressed)
          ],
        ),
      ),
      bottomNavigationBar: Footer(), // Mostrar el pie de página
    );
  }
}
