import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gremio/main.dart';

void main() {
  testWidgets('Prueba que espera encontrar el texto Vida: 40/100', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: MarcadorVida(vida: 40, onCurar: (_) {})),
      ));

    expect(find.text('Vida: 40/100'), findsOneWidget);
    
  });

  //Test 2
  testWidgets('Espera que espera encontrar el texto Vida: 40/100', (WidgetTester tester) async {
    int recibido = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: MarcadorVida(vida: 40, onCurar: (nueva) {recibido = nueva;})),
      ));

      await tester.tap(find.text('Curar'));

      expect(recibido,50);
    
  });

  //Test 3
  testWidgets('Prueba que comprueba que que el boton Curar a está a null cuando la vida llega a 100', (WidgetTester tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: MarcadorVida(vida: 100, onCurar: (_) {})),
      ));

      final boton = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      expect(boton.onPressed, isNull);



});
}