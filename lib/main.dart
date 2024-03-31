import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

const List<Color> colorCode = [
  Color.fromRGBO(61, 10, 170, 1),
  Color.fromARGB(255, 56, 33, 86)
];

// const String message = '3';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorCode, roll()),
      ),
    ),
  );
}


