import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  final void Function() onPressed;

  ErrorIndicator({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.dangerous_outlined),
          Text("Credenciales incorrectas"),
          ElevatedButton(
              onPressed: () => {
                onPressed()
              },
              child: Text("Volver"))
        ],
      ),
    );
  }
}
