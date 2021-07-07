import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

import 'compass_paint.dart';

class Compass extends StatefulWidget {
  Compass({Key key}) : super(key: key);

  @override
  _CompassState createState() => _CompassState();
}

class _CompassState extends State<Compass> {
  double heading = 0;

  @override
  void initState() {
    super.initState();
    FlutterCompass.events.listen((event) {
      setState(() {
        heading = event.heading;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CompassPaint(heading: heading),
      child: Center(
        child: Text(
          '${heading.toStringAsFixed(0)}°',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
