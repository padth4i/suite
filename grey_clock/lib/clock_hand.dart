import 'package:flutter/material.dart';

class ClockHand extends StatelessWidget {
  final Color color;
  final double angleRadians, height, width;
  final Offset offset;
  final ThemeData theme;

  const ClockHand({Key key, this.color, this.angleRadians, this.theme, this.height, this.width, this.offset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.expand(
        child: Transform.rotate(
          angle: angleRadians,
          alignment: Alignment.center,
          child: Container(
            child: Center(
              child: Transform.translate(
                offset: offset,
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: color,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
