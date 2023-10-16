import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200], // Color de fondo
      padding: EdgeInsets.all(16), // Espaciado interno
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/logo.jpg'),
          ),
          SizedBox(height: 8), // Espacio entre la imagen y el texto
          Text(
            'UNWorkOut', // Agregamos la palabra "UNWorkOut"
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF1D1818), // Color de texto en formato hexadecimal
            ),
          ),
          SizedBox(
              height: 8), // Espacio entre "UNWorkOut" y el texto "Acerca de"
          Text(
            'Acerca de', // Cambiamos el texto a "Acerca de"
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF1D1818), // Color de texto en formato hexadecimal
            ),
          ),
        ],
      ),
    );
  }
}
