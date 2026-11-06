import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartaColeccionable(),
    ),
  );
}

class CartaColeccionable extends StatelessWidget {
  const CartaColeccionable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: Center(
        child: Card(
          color: Colors.amber.shade100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          elevation: 10,
          child: SizedBox(
            width: 280,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        'Dashito',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'PS 90',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Icon(Icons.bolt, color: Colors.orange, size: 28),
                    ],
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade100,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.amber,
                        width: 4,
                      )
                    ),
                    child: Icon(
                      Icons.flutter_dash,
                      size: 100,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text('Tipo: Eléctrico · Nivel 12'),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Ataque: Rayo Hot Reload · 40 de daño'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 40,
                      ),
                      child: Text(
                        '¡ATACAR!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
