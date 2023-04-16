import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  final String nombre;

  SegundaPantalla({required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hola, $nombre',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {//Este método hace que el texto escrito en la primera pantalla utilizando Onpressed sea usado acá utilizando como complemento la variable
                             //Nombre que cómo en la anterior actividad esta inicializada en Final para que sea un valor Inmutable cuyo valor no pueda ser cambiado.
                Navigator.pop(context);
              },
              child: Text('Volver a la Primera Pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}