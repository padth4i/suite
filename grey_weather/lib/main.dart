import 'package:flutter/material.dart';
import 'package:grey_weather/constants/constants.dart';
import 'package:grey_weather/weather.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GWeather',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: now.hour >= 18 ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: WeatherApp(),
    );
  }
}
