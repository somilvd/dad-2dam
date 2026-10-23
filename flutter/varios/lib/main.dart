import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: JornadaTecnologica()),
  );
}

class JornadaTecnologica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jornada tecnológica')),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Programa de actividades", textAlign: TextAlign.left),
                Icon(Icons.info_outline),
              ],
            ),
            Image.network(
              'https://picsum.photos/800/300',
              width: 300,
              height: 140,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Card(child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Charlas"),
                  )),
                ),
                Expanded(
                  child: Card(child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Talleres"),
                  )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(height: 80, width: 240, child: Card(child: Center(child: Text("Próxima actividad: 10:30")),)),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
              Chip(label: Text("Programación")),
              Chip(label: Text("Robótica")),
              Chip(label: Text("Ciberseguridad")),
              Chip(label: Text("Inteligencia artificial")),
              Chip(label: Text("Videojuegos")),
              Chip(label: Text("Redes")),
            ],),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: Text("Inscripción gratuita hasta completar aforo"),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Consultar programa"))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Inscribirse"),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
