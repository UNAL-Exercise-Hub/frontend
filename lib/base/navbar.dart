import 'package:flutter/material.dart';

class Navbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _NavbarState createState() => _NavbarState();
  Size get preferredSize => Size.fromHeight(56.0);
}

class _NavbarState extends State<Navbar> {
  Map<String, Color> itemColors = {
    'Registro': Color(0xFF1D1818),
    'Rutinas': Color(0xFF1D1818),
    'Perfil': Color(0xFF1D1818),
    'Ejercicios': Color(0xFF1D1818),
  };
  Color hoverColor = Color(0xFFD60909);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem('Registro', Icons.assignment, '/registro'),
          _buildNavItem('Rutinas', Icons.fitness_center, '/rutinas'),
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/logo.jpg'),
          ),
          _buildNavItem('Perfil', Icons.person, '/perfil'),
          _buildNavItem('Ejercicios', Icons.fitness_center, '/ejercicios'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, IconData icon, String route) {
    return InkWell(
      onTap: () {
        // Navegar a la vista correspondiente
        Navigator.pushNamed(context, route);
      },
      child: MouseRegion(
        onEnter: (_) {
          // Cambiar el color del texto e icono al pasar el cursor por encima
          setState(() {
            itemColors[label] = hoverColor;
          });
        },
        onExit: (_) {
          // Restablecer el color del texto e icono cuando el cursor se retira
          setState(() {
            itemColors[label] = Color(0xFF1D1818);
          });
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: itemColors[label],
            ),
            SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: itemColors[label],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
