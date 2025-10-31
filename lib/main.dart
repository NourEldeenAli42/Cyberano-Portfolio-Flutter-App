import 'package:flutter/material.dart';
import 'package:flutter_course/main_app.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MainApp(),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      ),
    ),
  );
}
