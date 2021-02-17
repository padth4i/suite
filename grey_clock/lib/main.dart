import 'package:flutter/material.dart';
import 'package:grey_clock/clock.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GClock',
      home: Clock(),
      debugShowCheckedModeBanner: false,
    );
  }
}
