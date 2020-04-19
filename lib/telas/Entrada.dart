import 'package:flutter/material.dart';

class Entrada extends StatefulWidget {
  @override
  _EntradaState createState() => _EntradaState();
}

class _EntradaState extends State<Entrada> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Caixa de Entrada',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}