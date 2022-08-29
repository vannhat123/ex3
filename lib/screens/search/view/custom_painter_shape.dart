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
          size: Size(getWidth(375),(getWidth(375)*0.5).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    paint0.shader = ui.Gradient.linear(Offset(size.width*0.03,size.height*0.53),Offset(size.width*0.97,size.height*0.53),[Color(0xff682dcc),Color(0xff3f0f99)],[0.00,1.00]);

    Path path0 = Path();
    path0.moveTo(size.width*0.2885667,size.height*0.1285000);
    path0.cubicTo(size.width*0.2078500,size.height*0.0934333,size.width*0.1428667,size.height*0.1398333,size.width*0.1075500,size.height*0.2027000);
    path0.cubicTo(size.width*0.0527833,size.height*0.2830333,size.width*0.0295000,size.height*0.4414333,size.width*0.0338167,size.height*0.4984667);
    path0.cubicTo(size.width*0.0282667,size.height*0.6828000,size.width*0.0712500,size.height*0.7954667,size.width*0.0927833,size.height*0.8351000);
    path0.cubicTo(size.width*0.1399500,size.height*0.9064333,size.width*0.1933167,size.height*0.9697667,size.width*0.2815500,size.height*0.9742333);
    path0.cubicTo(size.width*0.4344667,size.height*0.9742333,size.width*0.7683167,size.height*0.9734000,size.width*0.8066500,size.height*0.9734000);
    path0.cubicTo(size.width*0.9672667,size.height*0.8746000,size.width*0.9608667,size.height*0.7537000,size.width*0.9637833,size.height*0.6838000);
    path0.cubicTo(size.width*0.9592000,size.height*0.6129667,size.width*0.9312833,size.height*0.5396000,size.width*0.8667000,size.height*0.4654333);
    path0.cubicTo(size.width*0.8387833,size.height*0.4112667,size.width*0.3773167,size.height*0.1610000,size.width*0.2885667,size.height*0.1285000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}



