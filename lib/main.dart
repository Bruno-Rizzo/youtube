import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    brightness: Brightness.dark,
  ),
  home:Home(),
));

