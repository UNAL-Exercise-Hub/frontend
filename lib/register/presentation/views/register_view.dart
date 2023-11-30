//Aqui va toda la vista y componentes visuales de la app
import 'package:flutter/material.dart';
import 'package:front_end_unworkout/base/presentation/widgets/navbar.dart';
import 'package:front_end_unworkout/base/presentation/widgets/footer.dart';

class RegisterView extends StatelessWidget {
  final nombres = TextEditingController();
  final apellidos = TextEditingController();
  final fecha_nacimiento = TextEditingController();
  final sexo = TextEditingController();
  final cel = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final void Function(String, String, String, String, String, String, String)
      onPressed;

  RegisterView({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: TextField(controller: nombres,
            decoration: InputDecoration(
                labelText: "Nombres",
                hintText: "ingrese sus nombres",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: TextField(controller: apellidos,
            decoration: InputDecoration(
                labelText: "Apellidos",
                hintText: "Ingrese sus apellidos",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: TextField(controller: fecha_nacimiento,
            decoration: InputDecoration(
                labelText: "Fecha de nacimiento",
                hintText: "DD/MM/AAAA",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: TextField(controller: sexo,
            decoration: InputDecoration(
                labelText: "Sexo",
                hintText: "Ingrese su sexo",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: TextField(controller: cel,
            decoration: InputDecoration(
                labelText: "Celular",
                hintText: "Ingrese su celular",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: TextField(controller: email,
            decoration: InputDecoration(
                labelText: "Correo electronico",
                hintText: "ingrese su correo electronico",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
          child: TextField(controller: password,
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Contraseña",
                hintText: "Ingrese su contraseña",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 5, left: 100, top: 10, bottom: 5),
              child: ElevatedButton(
                onPressed: () {
                  onPressed(
                      nombres.value.text,
                      apellidos.value.text,
                      fecha_nacimiento.value.text,
                      sexo.value.text,
                      cel.value.text,
                      email.value.text,
                      password.value.text);
                },
                child: Text("Registrar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD60909),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancelar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD60909),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
