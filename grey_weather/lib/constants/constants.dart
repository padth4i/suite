import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

final lightTheme = ThemeData(
  accentColor: Colors.black26,
  backgroundColor: Color(0xfff0eeec),
  textTheme: TextTheme(
    bodyText1: TextStyle(fontFamily: 'Lekton', fontSize: 18, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(fontFamily: 'Lekton', fontSize: 32, fontWeight: FontWeight.bold),
  ),
);

final darkTheme = ThemeData(
  accentColor: Colors.white12,
  backgroundColor: Color(0xff303030),
  textTheme: TextTheme(
    bodyText1: TextStyle(fontFamily: 'Lekton', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    bodyText2: TextStyle(fontFamily: 'Lekton', fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
  ),
);

final Map<String, IconData> nightWeatherIcons = {
      "clear": WeatherIcons.night_clear,
      "cloudy": WeatherIcons.night_alt_cloudy,
      "rain": WeatherIcons.night_alt_rain,
    };

    final Map<String, IconData> dayWeatherIcons = {
      "clear": WeatherIcons.day_sunny,
      "cloudy": WeatherIcons.day_sunny_overcast,
      "rain": WeatherIcons.day_rain,
    };