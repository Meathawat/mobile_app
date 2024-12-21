import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
          backgroundColor: Colors.pink, // สีชมพู
        ),
        body: Container(
          color: Colors.purple[100], // พื้นหลังสีม่วงอ่อน
          child: Center(
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 20), // ข้อความตรงกลาง
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, // เพิ่มปุ่มลอย
          backgroundColor: Colors.pink[200], // สีชมพูอ่อน
        ),
      ),
    );
  }
}
