import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp( WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}
