import 'package:flutter/material.dart';

class MyStatfukWidgets extends StatefulWidget {
  const MyStatfukWidgets({super.key});

  @override
  State<MyStatfukWidgets> createState() => _MyStatfukWidgetsState();
}

class _MyStatfukWidgetsState extends State<MyStatfukWidgets> {
  int counter = 10; // ค่าเริ่มต้นของ counter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidget"),
        backgroundColor: Colors.yellow,
        centerTitle: true, // ข้อความอยู่ตรงกลาง
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter Value",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++; // เพิ่มค่า counter
                    });
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 0) {
                        counter--; // ลดค่า counter
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // ปรับสีปุ่มเป็นสีแดง
                  ),
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = 0; // รีเซ็ตค่า counter กลับเป็น 10
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // ปรับสีปุ่มเป็นสีน้ำเงิน
                  ),
                  child: const Icon(Icons.refresh), // ไอคอนรีเซ็ต
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
