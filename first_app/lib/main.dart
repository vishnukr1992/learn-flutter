import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromRGBO(2, 190, 165, 1),
          Color.fromRGBO(6, 134, 117, 1),
          Color.fromRGBO(2, 109, 128, 1),
          Color.fromRGBO(5, 81, 126, 1)
        ]),
      ),
    ),
  );
}
