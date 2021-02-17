import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grey_clock/analog_clock.dart';
import 'package:grey_clock/digital_clock.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime now = DateTime.now();
  Timer timer;
  bool isAnalog;

  @override
  void initState() {
    super.initState();
    isAnalog = true;
    updateTime();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void updateTime() {
    setState(() {
      now = DateTime.now();
      timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: now.millisecond),
        updateTime,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final clockTheme = Theme.of(context).copyWith(
      primaryColor: Colors.white,
      accentColor: Colors.white70,
      backgroundColor: Colors.black,
    );
    return GestureDetector(
      onTap: () {
        setState(() {
          isAnalog = !isAnalog;
        });
      },
      child: Container(
        color: clockTheme.backgroundColor,
        child: isAnalog
            ? AnalogClock(
                theme: clockTheme,
                now: now,
              )
            : DigitalClock(
                theme: clockTheme,
                now: now,
              ),
      ),
    );
  }
}
