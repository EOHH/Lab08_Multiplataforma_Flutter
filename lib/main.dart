import 'package:flutter/material.dart';
import 'package:laboratorio08_flutter/screens/primera_pantalla.dart';
import 'package:laboratorio08_flutter/screens/segunda_pantalla.dart';
import 'package:laboratorio08_flutter/routes.dart'; // Importa el archivo de rutas

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegación con Rutas Nombradas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define las rutas nombradas
      initialRoute: Routes.primeraPantalla,
      routes: {
        Routes.primeraPantalla: (context) => PrimeraPantalla(),
        Routes.segundaPantalla: (context) => SegundaPantalla(),
      },
    );
  }
}
