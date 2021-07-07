import 'dart:math';

import 'package:flutter/material.dart';

class CompassPaint extends CustomPainter {
  final heading;

  CompassPaint({this.heading}) : super();

  double get rotation => -pi / 180 * heading;

  @override
  void paint(Canvas canvas, Size size) {
    Paint needle = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..color = Color(0xffbb0000);

    double radius = min(size.width / 2.2, size.height / 2.2);
    Offset center = Offset(size.width / 2, size.height / 2);
    Offset start = Offset.lerp(Offset(center.dx, radius), center, 0.6);
    Offset end = Offset.lerp(Offset(center.dx, radius), center, 0.3);

    var needlePath = Path()
      ..moveTo(start.dx, start.dy)
      ..lineTo(start.dx - 5, start.dy - 5)
      ..lineTo(end.dx, end.dy)
      ..lineTo(start.dx + 5, start.dy - 5)
      ..lineTo(start.dx, start.dy)
      ..close();

    // Set pivot point as center
    canvas.translate(center.dx, center.dy);
    canvas.rotate(rotation);
    canvas.translate(-center.dx, -center.dy);

    canvas.drawPath(needlePath, needle);
  }

  @override
  bool shouldRepaint(CompassPaint oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(CompassPaint oldDelegate) => false;
}
