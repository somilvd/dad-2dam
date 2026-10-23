import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('LAYOUTS')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (texto) {
                  print(texto);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('HOLA');
                },
                child: Text('ACEPTAR'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
