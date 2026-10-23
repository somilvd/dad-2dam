import 'package:flutter/material.dart';

void main() {
  runApp(const TarjetaPresentacionApp());
}

class TarjetaPresentacionApp extends StatelessWidget {
  const TarjetaPresentacionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TarjetaPresentacionPage(),
    );
  }
}

class TarjetaPresentacionPage extends StatefulWidget {
  const TarjetaPresentacionPage({super.key});

  @override
  State<TarjetaPresentacionPage> createState() => _TarjetaPresentacionPageState();
}

class _TarjetaPresentacionPageState extends State<TarjetaPresentacionPage> {
  // 3. Requisitos de programación: Variables de estado
  String _nombre = '';
  String _profesion = '';
  bool _modoOscuro = false;

  @override
  Widget build(BuildContext context) {
    // 2. Especificaciones visuales: Definición de colores según el estado
    final colorFondo = _modoOscuro ? const Color(0xFF202B3A) : const Color(0xFFF2F5F9);
    final colorTarjeta = _modoOscuro ? const Color(0xFF36455B) : Colors.white;
    final colorTextoPrincipal = _modoOscuro ? Colors.white : Colors.black87;
    final colorTextoSecundario = _modoOscuro ? Colors.white70 : Colors.black54;
    final colorIcono = _modoOscuro ? Colors.white : const Color(0xFF315D95);

    return Scaffold(
      backgroundColor: colorFondo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0), // Margen exterior de 16 px
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Fila superior con el título y el Switch de modo oscuro
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mi Tarjeta',
                    style: TextStyle(
                      fontSize: 24, // Título de 24 px
                      fontWeight: FontWeight.bold,
                      color: colorTextoPrincipal,
                    ),
                  ),
                  Switch(
                    value: _modoOscuro,
                    // 3. Requisitos: Actualización con onChanged y setState
                    onChanged: (value) {
                      setState(() {
                        _modoOscuro = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20), // Separación principal de 20 px

              // Tarjeta de presentación
              Card(
                color: colorTarjeta,
                elevation: 3, // Elevación de la tarjeta: 3
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      // Icono de perfil de 55 px
                      Icon(
                        Icons.person,
                        size: 55,
                        color: colorIcono,
                      ),
                      const SizedBox(width: 20), // Separación interna
                      // Textos de la tarjeta
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // 1. Funcionamiento: "Tu nombre" si está vacío
                              _nombre.isEmpty ? 'Tu nombre' : _nombre,
                              style: TextStyle(
                                fontSize: 22, // Nombre de 22 px
                                fontWeight: FontWeight.bold,
                                color: colorTextoPrincipal,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              // 1. Funcionamiento: "Tu profesión" si está vacío
                              _profesion.isEmpty ? 'Tu profesión' : _profesion,
                              style: TextStyle(
                                fontSize: 16, // Profesión de 16 px
                                color: colorTextoSecundario,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Separación principal de 20 px

              // Formulario de entrada de datos
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  labelStyle: TextStyle(color: colorTextoSecundario),
                  filled: true,
                  fillColor: colorTarjeta,
                  border: const OutlineInputBorder(),
                ),
                style: TextStyle(color: colorTextoPrincipal),
                // 3. Requisitos: onChanged y setState sin TextEditingController
                onChanged: (value) {
                  setState(() {
                    _nombre = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Profesión',
                  labelStyle: TextStyle(color: colorTextoSecundario),
                  filled: true,
                  fillColor: colorTarjeta,
                  border: const OutlineInputBorder(),
                ),
                style: TextStyle(color: colorTextoPrincipal),
                // 3. Requisitos: onChanged y setState sin TextEditingController
                onChanged: (value) {
                  setState(() {
                    _profesion = value;
                  });
                },
              ),
              const SizedBox(height: 20), // Separación principal de 20 px

              // Mensaje inferior condicional
              Text(
                // 1. Funcionamiento: Operador ternario según si el nombre está vacío
                _nombre.isEmpty ? 'Completa tus datos' : 'Tarjeta personalizada',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12, // Mensaje inferior de 12 px
                  color: colorTextoSecundario,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
