import 'package:flutter/material.dart';
import 'api_test/Aqi_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AQIScreen(),
    );
  }
}

