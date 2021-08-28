// Importaciones de Dart
import 'package:flutter/material.dart';

// Importaciones nuestras
import 'pages/home.dart';

// Creamos el widget que necesita la función runApp();
class MyApp extends StatelessWidget {
/*
  NOTAS
  01. El método build es el que se encarga de dibujar el bloque del widget
  02. Vamos a sobre escribir el metodo build que ya trae el StatelessWidget con @override
  03. Por el momento "context" contiene toda la información del árbol de widgets, conoce quien es su padre, quien es su nieto, etc. Todo esta ahí.
  04. Todo método "build" debe de retornar un "Widget"
*/
  @override
  Widget build(BuildContext context) {
    /**
     * Retornamos el widget MaterialApp.
     * Cada vez que mandamos a llamar un widget como MaterialApp,
     * implícitamente ejecutamos todos sus argumentos con nombre que 
     * vienen en el constructor de toda la clase;
     * Seria lo que viene dentro de MaterialApp("{}");
     * 
     * El argumento home de MaterialApp, es un widget.
     * -------------------------------------------------------------------------
     * El widget Text, el primer argumento que tiene es un argumento posicional,
     * luego recibe argumentos con nombres que se le mandan al constructor de la
     * clase Text
     * -------------------------------------------------------------------------
     * El widget Center, tiene como propiedad a child que puede recibir otro widget
     * como lo viene siendo el widget Text
     * 
     * Notas importantes:
     * - child es algo que existe muchisimo y que se encuentra en casi todos los widgets
     * - cuando miremos la clase Widget child en algún lado, podremos meter lo que sea: botones,
     *   textos, labels, etc...
     */
    return MaterialApp(
      home: Center(
        child: PageHome(), // Importamos nuestra widget - página home
      ),
    );
  }
}
