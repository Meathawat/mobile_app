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
          backgroundColor: Colors.pink, // สีชมพูสำหรับ AppBar
        ),
        body: Container(
          color: Colors.purple[100], // พื้นหลังสีม่วงอ่อน
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // จัดปุ่มให้อยู่บนสุด
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // กระจายปุ่มในแถว
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // สีปุ่มแดง
                    ),
                    child: Text('Item 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // สีปุ่มเขียว
                    ),
                    child: Text('Item 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // สีปุ่มน้ำเงิน
                    ),
                    child: Text('Item 3'),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating button pressed');
          },
          backgroundColor: Colors.pink[200], // สีของปุ่มลอย
          child: Icon(Icons.phone), // ไอคอนโทรศัพท์
        ),
      ),
    );
  }
}
