import 'package:flutter/material.dart';
import 'package:grey_clock/clock_hand.dart';
import 'package:vector_math/vector_math_64.dart' show radians;

final radiansPerTick = radians(360 / 60);
final radiansPerHour = radians(360 / 12);

class AnalogClock extends StatelessWidget {
  final ThemeData theme;
  final DateTime now;

  const AnalogClock({Key key, this.theme, this.now}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children: [
          ClockHand(
            color: theme.primaryColor,
            height: 75,
            width: 16,
            angleRadians: now.hour * radiansPerHour + (now.minute / 60) * radiansPerHour,
            theme: theme,
            offset: Offset(0.0, -32.5),
          ),
          ClockHand(
            color: theme.accentColor,
            height: 150,
            width: 8,
            angleRadians: now.minute * radiansPerTick,
            theme: theme,
            offset: Offset(0.0, -75.0),
          ),
        ],
      ),
    );
  }
}
