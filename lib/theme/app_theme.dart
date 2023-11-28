

import 'package:flutter/material.dart';


const List<Color> _temasDeLaApp = [
  Colors.purple,
  Colors.green,
  Colors.blue,
  Colors.redAccent,
  Colors.yellowAccent
];

class TemaDeLaApp {
  ThemeData tema() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _temasDeLaApp[2],
      brightness: Brightness.light
    );
  }
}