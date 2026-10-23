import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text('TÍTULO DEL DIBUJO')),
      body: Center(
        child: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            ),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
            ),
          ],
        )
      ),
    ),
  ));
}