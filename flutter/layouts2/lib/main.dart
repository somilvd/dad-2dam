import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('PUERTO DE LA CRUZ'),
                  SizedBox(height: 20),
                  Icon(Icons.wb_sunny),
                  Text('24°'),
                  Text('Despejado'),
                  SizedBox(height: 20),
                  Icon(Icons.air),
                  Text('Viento 18 km/h'),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}