import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  // Declaramos una variable para reutilizar el código de los estilos
  final fnt25 = new TextStyle(fontSize: 25);

  /*
   * Notas.
   * 01 - El widget Column, puede recibir un arreglo de widget's
   * 02 - Esos widget’s que recibe Column, pueden ser cualquier widget
   * 03 - Con mainAxisAlignment centramos todo el contenido dentro del widget Column 
   * 
   * floatingActionButton
   * 01 - El argumento "floatingActionButton" del "Scaffold" recibe un widget de tipo "FloatingActionButton"
   *      y el widget de "FloatingActionButton" recibe un argumento "onPressed" 
   *      que recibe una función de tipo void (que no retorna nada)
   * 02 - Iconos de flutter con material: https://material-ui.com/es/components/material-icons/
   * 03 - Para ver los mensajes con print en VSCode, tenemos que abrir la consola del depuración
   * 04 - Con el floatingActionButtonLocation mevemos la ubicación del botón pero este widget al mismo
   *      del widget floatingActionButton dentro del Scaffold
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("Hola mundo");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
