import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AQIScreen extends StatefulWidget {
  @override
  _AQIScreenState createState() => _AQIScreenState();
}

class _AQIScreenState extends State<AQIScreen> {
  String city = 'Bangkok';
  int? aqi;
  double? temperature;
  String status = '';

  Future<void> fetchAQIData() async {
    final token = '90d965a52d5af39efd27ae8db760c4d20e602e1d'; 
    final url = 'https://api.waqi.info/feed/$city/?token=$token';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          aqi = data['data']['aqi'];
          temperature = data['data']['iaqi']['t']['v'];
          status = getAQIStatus(aqi!);
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      setState(() {
        status = 'Error fetching data';
      });
    }
  }

  String getAQIStatus(int aqi) {
    if (aqi <= 50) return 'Good';
    if (aqi <= 100) return 'Moderate';
    if (aqi <= 150) return 'Unhealthy for Sensitive Groups';
    if (aqi <= 200) return 'Unhealthy';
    if (aqi <= 300) return 'Very Unhealthy';
    return 'Hazardous';
  }

  String getAQIEmoji(int aqi) {
    if (aqi <= 50) return '😊';
    if (aqi <= 100) return '😐';
    if (aqi <= 150) return '😷';
    if (aqi <= 200) return '🤢';
    if (aqi <= 300) return '🤮';
    return '💀';
  }

  @override
  void initState() {
    super.initState();
    fetchAQIData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Air Quality Index (AQI) 🌎'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: aqi == null
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    city,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 200,
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: aqi! <= 100 ? Colors.green : Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          getAQIEmoji(aqi!),
                          style: TextStyle(fontSize: 40),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '$aqi',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    status,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Temperature: ${temperature?.toStringAsFixed(1)}°C',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: fetchAQIData,
                    child: Text('Refresh'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
