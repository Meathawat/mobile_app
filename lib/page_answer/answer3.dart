import 'package:flutter/material.dart';
import 'package:flutter_test_1/page_answer/Answer_portal.dart';

class Answer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Display',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ProductLayout(),
    );
  }
}

class ProductLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Layout'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainApp()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.orange,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Product Layout',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Category: Electronics',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 50.0,
                children: [
                  productCard('Laptop', '999 THB', 'assets/images/mac.jpg'),
                  productCard('Smartphone', '699 THB', 'assets/images/iphone.jpg'),
                  productCard('Tablet', '499 THB', 'assets/images/ipad.jpg'),
                  productCard('Camera', '299 THB', 'assets/images/camera.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productCard(String name, String price, String imagePath) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 105,
          height: 105,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          price,
          style: const TextStyle(fontSize: 14, color: Colors.green),
        ),
      ],
    );
  }
}
