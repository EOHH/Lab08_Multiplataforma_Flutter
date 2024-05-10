import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String texto = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              texto,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            // Agregar la imagen de la segunda pantalla
            Image.asset(
              'assets/img_second_pantalla.jpg', // Ruta de la imagen en assets
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Regresar a la Primera Pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}