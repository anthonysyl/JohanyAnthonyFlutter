import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pantallas_informacion/main.dart';

void main() {
  testWidgets('Comprobar que el nombre ingresado se muestra en la pantalla siguiente',
          (WidgetTester tester) async {
        // Construir el widget de la pantalla principal
        await tester.pumpWidget(MyApp());

        // Encontrar el widget TextFormField para ingresar el nombre
        final nombreField = find.byType(TextFormField);
        expect(nombreField, findsOneWidget);

        // Ingresar un nombre en el TextFormField y enviar el formulario
        await tester.enterText(nombreField, 'Juan');
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        // Verificar que el nombre ingresado se muestra en la siguiente pantalla
        final textoHolaJuan = find.text('Hola, Juan');
        expect(textoHolaJuan, findsOneWidget);
      });
}
