import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: JornadaTecnologica()),
  );
}

class JornadaTecnologica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jornada tecnológica')),

      body: Padding(
        padding: EdgeInsets.all(16),

        child: Column(
          children: [
            // 1. SPACEBETWEEN: ELEMENTOS EN LOS EXTREMOS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Programa de actividades'),
                Icon(Icons.info_outline),
              ], 
            ),

            SizedBox(height: 16),

            // 2. SIZEDBOX: IMAGEN CON DIMENSIONES CONCRETAS
            Image.network(
              'https://picsum.photos/800/300',
              width: 300,
              height: 140,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 16),

            // 3. EXPANDED: DOS TARJETAS QUE COMPARTEN EL ANCHO
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('Charlas'),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('Talleres'),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            // 4. SIZEDBOX: CARD CON ANCHO Y ALTO FIJO
            SizedBox(
              width: 240,
              height: 80,
              child: Card(
                child: Center(child: Text('Próxima actividad: 10:30')),
              ),
            ),
            SizedBox(height: 16),

            // 5. WRAP: ETIQUETAS QUE SALTAN DE LÍNEA
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text('Programación')),
                Chip(label: Text('Robótica')),
                Chip(label: Text('Ciberseguridad')),
                Chip(label: Text('Inteligencia artificial')),
                Chip(label: Text('Videojuegos')),
                Chip(label: Text('Redes')),
              ],
            ),

            SizedBox(height: 16),

            // 6. CONTAINER: MARGEN Y RELLENO
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: Text('Inscripción gratuita hasta completar aforo'),
            ),

            SizedBox(height: 16),

            // 7. STRETCH: BOTONES DE ANCHO COMPLETO
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Consultar programa'),
                ),

                SizedBox(height: 8),

                ElevatedButton(onPressed: () {}, child: Text('Inscribirse')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}