import 'package:flutter/material.dart';
import 'package:inspector/widgets/tarjeta_evento.dart';

class PantallaEventos extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Próximos eventos')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TarjetaEvento(titulo: 'Taller de Flutter', fecha: '24 de octubre', plazasDisponibles: 15,), 
          TarjetaEvento(titulo: 'Introducción a Git', fecha: '30 de octubre', plazasDisponibles: 8,), 
          TarjetaEvento(titulo: 'Charla de ciberseguridad', fecha: '5 de noviembre',)],
        ),
      ),
    );
  }
}