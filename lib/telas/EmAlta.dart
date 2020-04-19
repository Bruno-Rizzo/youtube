import 'package:flutter/material.dart';

class EmALta extends StatefulWidget {
  @override
  _EmALtaState createState() => _EmALtaState();
}

class _EmALtaState extends State<EmALta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Explorar',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}