import 'typewriter.dart';
import 'create_material_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Job Application',
        theme: ThemeData(
          primarySwatch: createMaterialColor(Color(0xFF14022b)),
        ),
        home: TypeWriter());
  }
}
