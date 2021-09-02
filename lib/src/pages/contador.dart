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
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  /*
  * Notas.
  * Separación del código para no saturar la función build del State
  *   01 - Creamos una función privada que nos retorna un Row Widget y le pasamos el widget
  *        al floatingActionButton para crear la botonera de las acciones.
  *   02 - Con el argumento mainAxisAlignment del Row Widget podemos cambiar la posición del contenido
  *   03 - El SizedBox Widget es muy parecido como si fuera un tipo de HTML donde se puede especificar
  *        que puede tener un ancho con el argumento width y un alto con el argumento height
  *   04 - El Expanded Widget va a estirar el widget que tenga en su interior dentro de child
  *        para este ejemplo como se utiliza después del botón del icono con refresh
  *        nos da la falsa ilusión que existe un espacio vacío entre el primer botón y demás botones.
  */
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 20.0,
        ),
        Visibility(
          visible: _inContador == 0 ? false : true,
          child: FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: _contadorReiniciar,
          ),
        ),
        Expanded(
          child: SizedBox(),
        ),
        Visibility(
          visible: _inContador > 0 ? true : false,
          child: FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _contadorRestar,
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _contadorSumar,
        ),
        SizedBox(
          width: 20.0,
        ),
      ],
    );
  }

  void _contadorReiniciar() {
    setState(() => _inContador = 0);
  }

  void _contadorRestar() {
    setState(() => _inContador--);
  }

  void _contadorSumar() {
    setState(() => _inContador++);
  }
}
