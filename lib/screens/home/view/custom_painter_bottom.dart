import 'package:excersie2/const/consts.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomPainterBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Center(
        child: CustomPaint(
          size: Size(getWidth(400), (getWidth(400) * 0.25).toDouble()),
          //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5;
    paint1.shader = ui.Gradient.radial(
        Offset(size.width * 0.50, size.height * 0.34),
        size.width * 0.06,
        [Color(0xffeee2ef), Color(0xff594ae4)],
        [0.00, 1.00]);

    Path path1 = Path();
    path1.moveTo(size.width, 0);
    path1.quadraticBezierTo(size.width * 0.4864500, size.height * 0.6736000, 0,
        size.height * 0.0050000);
    path1.quadraticBezierTo(
        size.width * 0.4858375, size.height * 0.6852500, size.width, 0);
    path1.close();

    canvas.drawPath(path1, paint1);

    Paint paint2 = Paint()
      ..color = const Color.fromARGB(255, 0, 33, 60)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    paint2.shader = ui.Gradient.radial(
        Offset(size.width * 0.50, size.height * 0.52),
        size.width * 0.06,
        [Colors.indigo, Color.fromRGBO(31, 42, 71, 1)],
        [0.00, 1.00]);

    Path path2 = Path();
    path2.moveTo(size.width * 0.2337500, size.height);
    path2.lineTo(size.width * 0.7687500, size.height);
    path2.quadraticBezierTo(size.width * 0.7295125, size.height * 0.9385500,
        size.width * 0.7125000, size.height * 0.8550000);
    path2.cubicTo(
        size.width * 0.6772750,
        size.height * 0.6667500,
        size.width * 0.6910625,
        size.height * 0.6473000,
        size.width * 0.6478000,
        size.height * 0.3051000);
    path2.quadraticBezierTo(size.width * 0.6107875, size.height * 0.0565000,
        size.width * 0.5655875, size.height * 0.0490500);
    path2.lineTo(size.width * 0.4377375, size.height * 0.0511000);
    path2.quadraticBezierTo(size.width * 0.3884375, size.height * 0.0519500,
        size.width * 0.3487125, size.height * 0.2983500);
    path2.cubicTo(
        size.width * 0.3104875,
        size.height * 0.6251000,
        size.width * 0.3245875,
        size.height * 0.6258500,
        size.width * 0.2850000,
        size.height * 0.8500000);
    path2.quadraticBezierTo(size.width * 0.2728125, size.height * 0.9375000,
        size.width * 0.2337500, size.height);
    path2.close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
