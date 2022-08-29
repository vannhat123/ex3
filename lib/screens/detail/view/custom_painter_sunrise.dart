import 'package:excersie2/const/consts.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomPainterSunrise extends StatelessWidget {
  const CustomPainterSunrise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: getWidth(162),
      width: getWidth(162),
      child: Center(
        child: CustomPaint(
          size: Size(getWidth(100),(getWidth(100)*0.25).toDouble()),
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
      ..strokeWidth = 3.5;
    paint.shader = ui.Gradient.linear(
        Offset(size.width * 0.03, size.height * 0.53),
        Offset(size.width * 0.97, size.height * 0.53), [
      Color.fromRGBO(19, 58, 54, 1),
      Color.fromRGBO(19, 58, 54, 1),
      Color.fromRGBO(133, 157, 195, 1),
      Color.fromRGBO(133, 157, 195, 1),
      Color.fromRGBO(19, 58, 54, 1),
      Color.fromRGBO(19, 58, 54, 1)
    ], [
      0.00,
      0.15,
      0.3,
      0.8,
      0.86,
      1.00
    ]);
    final path = Path();
    path.moveTo(0, size.height*0.75);
    path.quadraticBezierTo(size.width * 0.12, size.height * 0.7,
        size.width * 0.25, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.375, size.height * 0.47,
        size.width * 0.5, size.height * 0.46);
    path.quadraticBezierTo(size.width * 0.625, size.height * 0.47,
        size.width * 0.75, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.88, size.height * 0.7, size.width, size.height * 0.75);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
