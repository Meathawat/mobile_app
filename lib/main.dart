import 'package:flutter/material.dart';
import 'package:flutter_test_1/my_stateful_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatfukWidgets(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String appBarTitle = 'Demo App'; // กำหนด State สำหรับ AppBar

  @override
  void initState() {
    super.initState();
    print("State Initialized"); // แสดงข้อความใน Console
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Align(
          alignment: Alignment.center, // ข้อความชิดซ้าย
          child: Text(
            appBarTitle,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello, เมธาวัจน์ ธนิพัฒน์วรกิจ 630710664',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  appBarTitle = 'Hello, Stateful Widget!';
                });
              },
              child: const Text('Change AppBar Title'),
            ),
          ],
        ),
      ),
    );
  }
}
