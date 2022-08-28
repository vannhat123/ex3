import 'dart:ui' as ui;
import 'package:excersie2/const/consts.dart';
import 'package:flutter/material.dart';


class CustomPainterShape extends StatelessWidget {
  const CustomPainterShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Container(
      child: Center(
        child: CustomPaint(
          size: Size(getWidth(500),(getWidth(800)*0.25).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: DrawerCustomPainter(),
        ),
      ),
    );
  }
}

class DrawerCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 1, 61, 109)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    Path path0 = Path();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    paint1.shader = ui.Gradient.linear(
        Offset(size.width * -0.01, size.height * 0.49),
        Offset(size.width * 1.05, size.height * 0.49),
        [Color.fromRGBO(88, 54, 179, 1), Color.fromRGBO(53, 40, 129, 1)],
        [0.00, 1.00]);

    Path path1 = Path();
    path1.moveTo(size.width * -0.0060362, size.height * 0.4850000);
    path1.quadraticBezierTo(size.width * 0.0143461, size.height * 0.0147600,
        size.width * 0.2907445, size.height * 0.0200000);
    path1.cubicTo(
        size.width * 0.3558954,
        size.height * 0.0015200,
        size.width * 0.8922334,
        size.height * 0.3877600,
        size.width * 0.8918511,
        size.height * 0.3800000);
    path1.cubicTo(
        size.width * 1.0508048,
        size.height * 0.5842400,
        size.width * 0.9856740,
        size.height * 0.9200000,
        size.width * 0.8938632,
        size.height * 0.9600000);
    path1.cubicTo(
        size.width * 0.8931187,
        size.height * 0.9642400,
        size.width * 0.8464588,
        size.height * 0.9870000,
        size.width * 0.2957746,
        size.height * 0.9650000);
    path1.quadraticBezierTo(size.width * 0.0257746, size.height * 0.9025200,
        size.width * -0.0060362, size.height * 0.4850000);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
