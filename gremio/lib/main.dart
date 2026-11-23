import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ✏️ 1. Completa el modelo
class BolsaModel extends ChangeNotifier{
  int oro;
  int objetos;
  bool puedeComprar(int precio);
  void comprar(String objeto, int precio);
  void completarMision();
}

void main() {
  // ✏️ 2. Haz que el modelo llegue a toda la app
  runApp(ChangeNotifierProvider(create: (context) => BolsaModel()));
}

class GremioApp extends StatelessWidget {
  const GremioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('La tienda del gremio'),
          actions: const [ContadorOro(), SizedBox(width: 16)],
        ),
        body: const Column(
          children: [
            ArticuloTienda(nombre: 'Poción', precio: 20),
            ArticuloTienda(nombre: 'Espada', precio: 45),
            ArticuloTienda(nombre: 'Capa mágica', precio: 70),
            ContadorMochila(),
            BotonMision(),
          ],
        ),
      ),
    );
  }
}

// ✏️ 3. Muestra el oro que hay
class ContadorOro extends StatelessWidget {
  const ContadorOro({super.key});

  @override
  Widget build(BuildContext context) {
    const oro = 0;
    return const Center(child: Text('🪙 $oro'));
  }
}

// ✏️ 4. Se desactiva si no llega el oro; al pulsarlo, compra
class ArticuloTienda extends StatelessWidget {
  final String nombre;
  final int precio;

  const ArticuloTienda({super.key, required this.nombre, required this.precio});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(nombre),
      trailing: ElevatedButton(
        onPressed: () {},
        child: Text('Comprar ($precio 🪙)'),
      ),
    );
  }
}

// ✏️ 5. Muestra cuántos objetos hay en la mochila
class ContadorMochila extends StatelessWidget {
  const ContadorMochila({super.key});

  @override
  Widget build(BuildContext context) {
    const objetos = 0;
    return const Text('🎒 $objetos objetos');
  }
}

// ✏️ 6. Al pulsarlo, completa una misión
class BotonMision extends StatelessWidget {
  const BotonMision({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: const Text('Completar misión (+30 🪙)'));
  }
}
