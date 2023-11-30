import 'package:flutter/material.dart';
import 'package:front_end_unworkout/routines/domain/models/routine_model.dart';

class RoutineView extends StatelessWidget {
  final int numberOfCards = 1;
  final void Function() onPressed;

  const RoutineView(
      {super.key,
        required this.onPressed
      });

  @override
  Widget build(BuildContext context) {
    // Crea una lista de cartas basada en el número especificado.
    List<Widget> cards = List.generate(
      numberOfCards,
          (index) => Card(
        child: Column(
          children: [
            const ListTile(
              title: Text('Jueves'), // Mantén el título original
            ),
            const Text('Duración: 1 hora y media',),
            const Text('Hora de inicio: 20:00'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Iniciar'),
                  onPressed: () {
                    onPressed();
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );

    return ListView(
      children: cards,
    );
  }
}