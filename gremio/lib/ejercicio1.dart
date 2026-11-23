import 'package:flutter/material.dart';

void main() => runApp(const GremioApp());

class GremioApp extends StatelessWidget {
  const GremioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PantallaLogros());
  }
}


class PantallaLogros extends StatelessWidget {
  const PantallaLogros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Logros del gremio')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 24,
          runSpacing: 16,
          children: [
            MedallaLogros(titulo: "Primera dragón", icono: Icon(Icons.whatshot)),
            MedallaLogros(titulo: "Explorador", icono: Icon(Icons.explore), color: Colors.teal,),
            MedallaLogros(titulo: "Leyenda", icono: Icon(Icons.star), bloqueada: true)
          ],
        ),
      ),
    );
  }
}


class MedallaLogros extends StatelessWidget {

  final String titulo;
  final Icon icono;
  final Color color;
  final bool bloqueada;


  const MedallaLogros({super.key, required this.titulo, required this.icono, this.color = Colors.amber, this.bloqueada = false});



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 24,
          runSpacing: 16,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if(bloqueada) CircleAvatar(radius: 32, backgroundColor: Colors.grey.shade300, child: Icon(Icons.lock, size: 36)), SizedBox(height: 4),
                CircleAvatar(radius: 32, backgroundColor: color, child: icono),
                SizedBox(height: 4),
                Text(titulo),
              ],
            ),
          ],
        ),
      );
  }
}