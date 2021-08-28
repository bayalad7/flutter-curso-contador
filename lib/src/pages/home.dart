import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Título"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Home Cuerpo"),
      ),
    );
  }
}
