import 'dart:math'; // Random: números al azar

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ===== El notificador de cambios: las reglas del juego =====
class Caldero extends ChangeNotifier{
  int potencia = 0;
  int puntos = 0;
  bool explotado = false;

  void echarIngrediente() {
    potencia += Random().nextInt(3) + 1;
    if (potencia > 10) {
      explotado = true;
    }
    notifyListeners();
  }

  void embotellar() {
    puntos += potencia;
    potencia = 0;
    notifyListeners();
  }

  void limpiar() {
    potencia = 0;
    explotado = false;
    notifyListeners();
  }
}

void main() {
  // TODO 5: envuelve la aplicación con el proveedor del Caldero.
  runApp(const JuegoPociones());
}

class JuegoPociones extends StatelessWidget {
  const JuegoPociones({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('🧪 Clase de Pociones'),
          actions: const [MarcadorPuntos(), SizedBox(width: 16)],
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            Text(
              'Echa ingredientes para que la poción sea más potente. '
              'Si pasa de 10... ¡BOOM! Embotella a tiempo para ganar '
              'puntos para tu casa.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            VistaCaldero(),
            SizedBox(height: 24),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 12,
              runSpacing: 12,
              children: [BotonIngrediente(), BotonEmbotellar(), BotonLimpiar()],
            ),
          ],
        ),
      ),
    );
  }
}

// ===== Widgets que ESCUCHAN (watch) =====
class MarcadorPuntos extends StatelessWidget {
  const MarcadorPuntos({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO 6: escucha el caldero y muestra sus puntos.
    return const Chip(
      avatar: Icon(Icons.emoji_events, color: Colors.amber),
      label: Text('0 puntos'),
    );
  }
}

class VistaCaldero extends StatelessWidget {
  const VistaCaldero({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO 7: escucha el caldero y lee de él estos dos datos.
    const potencia = 0;
    const explotado = false;

    final color = explotado
        ? Colors.red
        : potencia <= 5
            ? Colors.green
            : potencia <= 8
                ? Colors.orange
                : Colors.deepOrange;

    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(colors: [color, Colors.black87]),
            boxShadow: [BoxShadow(color: color, blurRadius: 30)],
          ),
          child: Text(explotado ? '💥' : '🧪', style: const TextStyle(fontSize: 80)),
        ),
        const SizedBox(height: 16),
        Text(
          explotado ? '¡BOOM! La poción ha explotado' : 'Potencia: $potencia / 10',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: explotado ? 1 : potencia / 10,
          color: color,
          minHeight: 10,
          borderRadius: BorderRadius.circular(5),
        ),
      ],
    );
  }
}

// ===== Widgets que PROVOCAN cambios (read) =====
class BotonIngrediente extends StatelessWidget {
  const BotonIngrediente({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () {
        // TODO 8: pide al caldero que ejecute echarIngrediente().
      },
      icon: const Icon(Icons.eco),
      label: const Text('Echar ingrediente'),
    );
  }
}

class BotonEmbotellar extends StatelessWidget {
  const BotonEmbotellar({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      onPressed: () {
        // TODO 8: pide al caldero que ejecute embotellar().
      },
      icon: const Icon(Icons.local_drink),
      label: const Text('Embotellar'),
    );
  }
}

class BotonLimpiar extends StatelessWidget {
  const BotonLimpiar({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        // TODO 8: pide al caldero que ejecute limpiar().
      },
      icon: const Icon(Icons.cleaning_services),
      label: const Text('Limpiar caldero'),
    );
  }
}
