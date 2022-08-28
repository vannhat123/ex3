import 'dart:math';

import 'package:flutter/material.dart';

class DrawCircle extends StatefulWidget {
  @override
  _DrawCircleState createState() => _DrawCircleState();
}

class _DrawCircleState extends State<DrawCircle> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: CustomPaint(
        painter: ClockPainter(),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width/1.8;
    var centerY = size.height/1.8 ;
    var radius = min(centerX, centerY);


    var dashBrush = Paint()
      ..color = Colors.white54
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 0.5;

    var dashBrush1 = Paint()
      ..color = const Color(0xFFEAECFF)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;

    var dashBrush2 = Paint()
      ..color = const Color(0xFFEAECFF)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;


    var outerCircleRadius = radius;
    var innerCircleRadius = radius - 5;
    for (double i = 0; i < 360; i += 2) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerX + outerCircleRadius * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius * cos(i * pi / 180);
      var y2 = centerX + innerCircleRadius * sin(i * pi / 180);
      if(i==30 || i ==60 || i==120 ||i ==150 ||i==210|| i==240 || i==300|| i ==330){
        canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush1);
      }else if(i==90||i==180||i==270||i==0){
        canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush2);
      }else{
        canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}