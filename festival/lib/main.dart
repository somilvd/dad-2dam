import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PantallaCompra()));

class PantallaCompra extends StatefulWidget {
  const PantallaCompra({super.key});

  @override
  State<PantallaCompra> createState() => _PantallaCompraState();
}

class _PantallaCompraState extends State<PantallaCompra> {
  static const double precio = 25;
  int cantidad = 0;
  bool comprado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas Sonora')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SelectorEntradas(cantidad: cantidad, onCambio: (nuevo) {setState(() {
              cantidad = nuevo;
            });}, onComprar: () {setState(() {
              comprado = true;
            });},),
            Text('Total: ${cantidad * precio} €'),
            if (comprado) const Text('¡Entradas compradas!'),
          ],
        ),
      ),
    );
  }
}

class SelectorEntradas extends StatelessWidget {
  final int cantidad;
  final Function(int) onCambio;
  final VoidCallback onComprar;
  const SelectorEntradas({super.key, required this.cantidad, required this.onCambio, required this.onComprar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            if(cantidad > 0) {
              onCambio(cantidad - 1);
            }
          },
        ),
        Text('$cantidad'),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {onCambio(cantidad + 1);},
        ),
        ElevatedButton(onPressed: () {onComprar();}, child: const Text('Comprar')),
      ],
    );
  }
}
