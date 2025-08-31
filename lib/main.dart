import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(        
        body: GradientContainer(colors: [
          Color.fromRGBO(80, 2, 57, 1),
          Color.fromRGBO(65, 7, 98, 1)
          ]),
      ),
    ),
  );
}

