import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  // Declaramos una variable para reutilizar el código de los estilos
  final fnt25 = new TextStyle(fontSize: 25);

  /*
   * Notas.
   * 01 - El widget Column, puede recibir un arreglo de widget's
   * 02 - Esos widget’s que recibe Column, pueden ser cualquier widget
   * 03 - Con mainAxisAlignment centramos todo el contenido dentro del widget Column 
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Título"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Número de Click's:",
              style: fnt25,
            ),
            Text(
              "0",
              style: fnt25,
            ),
          ],
        ),
      ),
    );
  }
}
