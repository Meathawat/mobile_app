import 'package:flutter/material.dart';
import 'package:flutter_test_1/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CPSU Project",
        style: TextStyle(
          color: Colors.white, fontSize: 28
        ),
       
        ),
        backgroundColor: const Color.fromARGB(255, 111, 8, 184)
        ),
        body: MyHomePage(),
      );
  }
}
