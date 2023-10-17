import 'package:flutter/material.dart';
import 'package:front_end_unworkout/base/presentation/widgets/footer.dart';
import 'package:front_end_unworkout/base/presentation/widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Navbar(), // Mostrar la barra de navegación
        body: const Center(
          child: Text(
              'Contenido principal de la vista'), // Contenido de tu vista principal
        ),
        bottomNavigationBar: Footer(), // Mostrar el pie de página
      ),
    );
  }
}