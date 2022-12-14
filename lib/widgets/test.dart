import 'package:excersie2/const/consts.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomPainterSunrise1 extends StatelessWidget {
  const CustomPainterSunrise1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Center(
        child: CustomPaint(
          painter: CurvePainter(),
          child: Container(),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0;
    paint.shader = ui.Gradient.linear(
        Offset(size.width * 0.03, size.height * 0.53),
        Offset(size.width * 0.97, size.height * 0.53), [
      Color.fromRGBO(19, 58, 54, 1),
      Color.fromRGBO(19, 58, 54, 1),
      Color.fromRGBO(133, 157, 195, 1),
      Color.fromRGBO(19, 58, 54, 1),
      Color.fromRGBO(19, 58, 54, 1)
    ], [
      0.00,
      0.25,
      0.50,
      0.8,
      1.00
    ]);
    final path = Path();
    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(size.width * 0.12, size.height * 0.5,
        size.width * 0.25, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.375, size.height * 0.3,
        size.width * 0.5, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.625, size.height * 0.3,
        size.width * 0.75, size.height * 0.4);
    path.quadraticBezierTo(
        size.width * 0.88, size.height * 0.5, size.width, size.height * 0.5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
