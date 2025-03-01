import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrafficLightPage(),
    );
  }
}

class TrafficLightPage extends StatefulWidget {
  @override
  _TrafficLightPageState createState() => _TrafficLightPageState();
}

class _TrafficLightPageState extends State<TrafficLightPage> {
  int currentLight = 0; 

  void changeLight() {
    setState(() {
      currentLight = (currentLight + 1) % 3; 
    });
  }

  double getOpacity(int lightIndex) {
    return currentLight == lightIndex ? 1.0 : 0.3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Traffic Light Animation"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 300,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: getOpacity(0),
                    child: buildLight(Colors.red, currentLight == 0),
                  ),

                  AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: getOpacity(1),
                    child: buildLight(Colors.yellow, currentLight == 1),
                  ),

                  AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: getOpacity(2),
                    child: buildLight(Colors.green, currentLight == 2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: changeLight,
              child: const Text("เปลี่ยนไฟ"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLight(Color color, bool isActive) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: color.withOpacity(0.6),
                  blurRadius: 20,
                  spreadRadius: 10,
                ),
              ]
            : [],
      ),
    );
  }
}
