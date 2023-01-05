import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    /// Draw stright line
    Paint linePaint = Paint();
    linePaint.strokeWidth = 10;
    // linePaint.color = Colors.amber;
    canvas.drawLine(const Offset(50, 150), const Offset(150, 200), linePaint);
    canvas.drawLine(
        Offset(size.width - 50, 150), Offset(size.width - 150, 200), linePaint);

    /// Draw Cicle
    Paint circlePaint = Paint();
    canvas.drawCircle(Offset(100, 250), 20, circlePaint);
    canvas.drawCircle(Offset(size.width - 100, 250), 20, circlePaint);

    /// Draw an ARCH
    Paint arcPaint = Paint()
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
    Rect rect = Rect.fromLTWH(80, 350, 200, 100);
    canvas.drawArc(rect, math.pi, math.pi, true, arcPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
