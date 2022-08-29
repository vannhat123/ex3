import 'package:excersie2/const/color.dart';
import 'package:excersie2/const/size_config.dart';
import 'package:flutter/material.dart';
class FormContainerSquare extends StatelessWidget {
   FormContainerSquare({Key? key,required this.component}) : super(key: key);

  Widget component;
  @override
  Widget build(BuildContext context) {
    return   Container(
        width: getWidth(162),
        height: getWidth(162), alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white30,
                width: 0.5),
            borderRadius:
            const BorderRadius.all(
                Radius.circular(20)),
            color: MyColors.SUB_COLOR2
                .withOpacity(0.8),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.purpleAccent,
                  Colors.indigoAccent,
                ])
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          width: getWidth(161),
          height: getWidth(161),
          decoration: BoxDecoration(
              borderRadius:
              const BorderRadius.all(
                  Radius.circular(20)),
              color: MyColors.SUB_COLOR2),
          child: component,
        )
    );
  }
}
