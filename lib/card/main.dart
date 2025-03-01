import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Widget"),
          centerTitle: true,
          backgroundColor: Colors.pink[50],
        ),
        body: const Center(
          child: ProfileCard(
            name: "Meathawat Thaniphatworakij",
            position: "Progaymer",
            email: "thaniphatworaki_m@silpakorn.edu",
            phoneNumber: "097159XXXX",
            imageUrl: "https://pbs.twimg.com/profile_images/1413347406884741124/70tVjy-9_400x400.jpg",
          ),
        ),
      ),
    );
  }
}
