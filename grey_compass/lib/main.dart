import 'package:flutter/material.dart';

import 'compass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.white12,
        backgroundColor: Color(0xff303030),
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: 'Lekton', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
      ),
      home: Compass(),
      debugShowCheckedModeBanner: false,
    );
  }
}
