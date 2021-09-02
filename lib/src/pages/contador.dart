// Para el StatefulWidget primero tendremos que realizar la importación de material
import 'package:flutter/material.dart';

/*
 * Notas Generales.
 *  El StatefulWidget consta de dos clases;
 *  01 - La primera clase es el StatefulWidget como tal
 *  02 - La segunda clase es el estado que va a manejar ese StatefulWidget
 */

/*
 * Notas.
 * Clase del StatefulWidget (PageContador)
 *  01 - Tenemos que realizar la implementación del StatefulWidget.createState
 *  02 - El createState necesita retornar una nueva instancia del estado del StatefulWidget
 *  03 - La clase StatefulWidget como tal, tiene una implementación interna del createState
 *       y para utilizarla tenemos que sobrescribirla con el método @override
 */
class PageContador extends StatefulWidget {
  @override
  createState() => _PageContadorState();
}

/*
 * Notas.
 * Clase del estado para el StatefulWidget (PageContador)
 *  01 - La clase del estado solamente se tiene que utilizar en la página del mismo StatefulWidget,
 *       no se puede utilizar fuera de la misma página.
 *  02 - Se le pone un “_” al inicio del nombre la clase, para indicar que esa clase va a ser privada.
 *  03 - La clase State, es una clase de tipo genérica y necesitamos especificarle que StatefulWidget va a manejar.
 *  04 - Tenemos que realizar la implementación del State.build como lo hacemos con los StatelessWidget
 *  05 - Las propiedades que se van a declarar dentro del State del StatefulWidget, es un estándar
 *       poner un “_” al inicio del nombre de esas propiedades.
 *  06 - Después de realizar el onPressed del botón del floatingActionButton, tenemos que redibujar
 *       el StatefulWidget con la función de setState para poder visualizar los cambios
 */
class _PageContadorState extends State<PageContador> {
  final _fnt25 = new TextStyle(fontSize: 25);
  int _inContador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Contador: StatefulWidget"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Número de Click's:",
              style: _fnt25,
            ),
            Text(
              "$_inContador",
              style: _fnt25,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // print("Incremento en el contador $_inContador");
          setState(() {
            _inContador++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
