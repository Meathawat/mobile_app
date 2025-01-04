import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Grid Layout"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: const GridLayoutExample(),
      ),
    );
  }
}

class GridLayoutExample extends StatelessWidget {
  const GridLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ColoredBox(color: Colors.red),
              ColoredBox(color: Colors.green),
              ColoredBox(color: Colors.blue),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ColoredBox(color: Colors.purple),
              ColoredBox(color: Colors.orange),
              ColoredBox(color: Colors.yellow),
            ],
          ),
        ],
      ),
    );
  }
}

class ColoredBox extends StatelessWidget {
  final Color color;
  const ColoredBox({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
