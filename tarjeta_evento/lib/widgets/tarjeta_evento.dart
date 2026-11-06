import 'package:flutter/material.dart';

class TarjetaEvento extends StatelessWidget {
  final String titulo;
  final String fecha;
  final int plazasDisponibles;

  const TarjetaEvento({
    super.key,
    required this.titulo,
    required this.fecha,
    this.plazasDisponibles = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(fecha),
            Text('$plazasDisponibles plazas disponibles'),
            ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Inscripción realizada')));
            }, child: Text('Inscribirse'))
          ],
        ),
      ),
    );
  }
}
