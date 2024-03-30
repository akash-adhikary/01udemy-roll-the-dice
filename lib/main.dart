import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
const List<Color> colorCode= [
          Color.fromARGB(255, 19, 2, 57),
          Color.fromARGB(255, 56, 33, 86)
        ];

const String message = 'Hello World !';

void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorCode,message),
      ),
    ),
  );
}
