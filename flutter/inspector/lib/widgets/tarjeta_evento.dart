import 'package:flutter/material.dart';

class TarjetaEvento extends StatelessWidget {
  final String titulo;
  final String fecha;
  final int plazasDisponibles;

  const TarjetaEvento({super.key, required this.titulo, required this.fecha, this.plazasDisponibles = 0});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titulo, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 8),
            Text(fecha),
            Text('Plazas Disponibles: $plazasDisponibles'),
          ],
        ),
      ),
    );
  }
}
