import 'package:flutter/material.dart';  //Está linea importa el paquete de la clase Main.dart
import 'package:pantallas_informacion/segunda_pantalla.dart'; //

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { // El método por el cuál la aplicación se ejecuta
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: PrimeraPantalla(),
    );
  }
}

class PrimeraPantalla extends StatelessWidget { // La aplicación es inmutable
  final miControlador = TextEditingController();//Aquí el final indica que una vez inicializados los valores ya no podran ser modificados
                                                //esto es util para evitar posibles inconsistencias en el envio de información o algún posible error.

  @override
  Widget build(BuildContext context) { //Este método construye y devuelve el widget raíz de la aplicación.
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: miControlador,
              decoration: InputDecoration(
                hintText: 'Ingrese su nombre',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(//Aquí se crea un botón el cuál se le crea la posibilidad de enviarnos a la otra pantalla
                           //En este caso la segundapantalla junto con el dato textual llamado miControlador.
              onPressed: () {
                Navigator.push(//Le da acción al botón de poder pasar de una actividad a otra.
                  context,
                  MaterialPageRoute(
                    builder: (context) => SegundaPantalla(nombre: miControlador.text),//Se crea la instancia y le pasa el nombre del usuario ingresado
                  ),
                );
              },
              child: Text('Ir a la Segunda Pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}
