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
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 320,
              height: 220,
              child: Row(
                children: [
                  Expanded(child: Container(color:  Colors.white)),
                  Expanded(child: Container(color:  Colors.yellow,)),
                  Expanded(child: Container(color:  Colors.cyan)),
                  Expanded(child: Container(color:  Colors.green)),
                  Expanded(child: Container(color:  Colors.purpleAccent)),
                  Expanded(child: Container(color:  Colors.red)),
                  Expanded(child: Container(color:  Colors.blue)),
                  ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: Text("SIN SEÑAL", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
