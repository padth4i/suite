import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DigitalClock extends StatelessWidget {
  final ThemeData theme;
  final DateTime now;

  const DigitalClock({Key key, this.now, this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,

          body: Center(
        child: Text(
          DateFormat('H:m').format(now),
          style: TextStyle(color: Colors.white, fontFamily: 'Lekton', fontSize: 40.0),
        ),
      ),
    );
  }
}
