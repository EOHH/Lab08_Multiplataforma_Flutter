import 'package:flutter/material.dart';
import 'package:laboratorio08_flutter/routes.dart';

class PrimeraPantalla extends StatelessWidget {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    '¡Escribe con orgullo tu lema de equipo!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 300, // Establece el ancho deseado
                    child: TextField(
                      controller: _textFieldController,
                      decoration: InputDecoration(
                        hintText: 'Ingrese su texto',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Agregar la imagen de la primera pantalla
            Image.asset(
              'assets/img_first_pantalla.jpg', // Ruta de la imagen en assets
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Routes.segundaPantalla,
                  arguments: _textFieldController.text,
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
