import 'package:flutter/material.dart';
import 'package:tarea3xilophono/classes/class.dart';

class xilophono extends StatelessWidget {
  const xilophono({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Tarea 3 Xilophono"),
          ),
          body: Column(
            children: [
              tecla("Do", Colors.pink, 1),
              tecla("Re", Colors.indigo, 2),
              tecla("Mi", Colors.green, 3),
              tecla("Fa", Colors.yellow, 4),
              tecla("Sol", Colors.orange, 5),
              tecla("La", Colors.brown, 6),
              tecla("Si", Colors.blue, 7),
            ],
          )),
    );
  }
}

Widget tecla(String nombreNota, Color colorNota, int sonidoNota) {
  return Container(
    height: 100,
    color: colorNota,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            notaMusical(sonidoNota);
          },
          child: Text(
            nombreNota,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
