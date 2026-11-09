import 'dart:math'; // Random: números al azar

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SombreroNotificador extends ChangeNotifier {
  Map<String, int> recuento = {
    'Gryffindor': 0,
    'Hufflepuff': 0,
    'Ravenclaw': 0,
    'Slytherin': 0,
  };

  void sumar(String casa) {
    recuento[casa] = recuento[casa]! + 1;
    notifyListeners();
  }

  void seleccionar() {
    Random().nextInt(4); 
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SombreroNotificador(),
      child: const SombreroApp(),
    ),
  );
}

class SombreroApp extends StatelessWidget {
  const SombreroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.brown, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('🎩 El sombrero seleccionador')),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ResultadoSombrero(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [BotonSeleccionar(), SizedBox(width: 12), BotonReiniciar()],
              ),
              SizedBox(height: 20),
              RecuentoCasas(),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultadoSombrero extends StatelessWidget {
  const ResultadoSombrero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('🎩', style: TextStyle(fontSize: 72)),
        Text('¿?', style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class RecuentoCasas extends StatelessWidget {
  const RecuentoCasas({super.key});

  @override
  Widget build(BuildContext context) {
    const casas = ['Gryffindor', 'Hufflepuff', 'Ravenclaw', 'Slytherin'];
    return Card(
      child: Column(
        children: [
          for (final casa in casas)
            ListTile(
              leading: const Icon(Icons.shield),
              title: Text(casa),
              trailing: const Text('0', style: TextStyle(fontSize: 20)),
            ),
        ],
      ),
    );
  }
}

class BotonSeleccionar extends StatelessWidget {
  const BotonSeleccionar({super.key});
  @override
  Widget build(BuildContext context) {
    final boton = context.read<SombreroNotificador>();
    return FilledButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.auto_awesome),
      label: const Text('Seleccionar'),
    );
  }
}

class BotonReiniciar extends StatelessWidget {
  const BotonReiniciar({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text('Reiniciar'),
    );
  }
}
