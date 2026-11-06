import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Tienda()));
}

class TarjetaProducto extends StatelessWidget {
  final String nombre;
  final int precio;
  final void Function(int) onComprar;

  const TarjetaProducto({
    super.key,
    required this.nombre,
    required this.precio,
    required this.onComprar,
  });
  @override
  Widget build(BuildContext contet) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(nombre), Text('$precio euros')],
        ),
      ),
    );
  }
}

class Tienda extends StatefulWidget {
  const Tienda({super.key});
  @override
  State<Tienda> createState() => _TiendaState();
}

class _TiendaState extends State<Tienda> {
  int saldo = 20;

  void comprar(int precio) {
    if (saldo < precio) return;
    if (saldo >= precio) {
      setState(() {
        if (saldo >= 2) {
          saldo -= 2;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('La tienda de clase')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Saldo: $saldo euros'),
            TarjetaProducto(
              onComprar: () {
                comprar(2);
              },
              nombre: 'Pegatina',
              precio: 2,
            ),
            TarjetaProducto(
              onComprar: () {
                comprar(5);
              },
              nombre: 'Libreta',
              precio: 5,
            ),
            TarjetaProducto(
              onComprar: () {
                comprar(12);
              },
              nombre: 'Camiseta',
              precio: 12,
            ),
          ],
        ),
      ),
    );
  }
}
