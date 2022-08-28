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
          // child: Column(
          //   crossAxisAlignment:
          //   CrossAxisAlignment.start,
          //   mainAxisAlignment:
          //   MainAxisAlignment
          //       .spaceBetween,
          //   children: [
          //     Row(
          //       children: const [
          //         Icon(
          //           Icons.sunny,
          //           size: 12,
          //           color: Colors.white30,
          //         ),
          //         Text(
          //           " UV INDEX",
          //           style: TextStyle(
          //               color:
          //               Colors.white30,
          //               fontSize: 12),
          //         )
          //       ],
          //     ),
          //     Column(
          //       crossAxisAlignment:
          //       CrossAxisAlignment
          //           .start,
          //       children: const [
          //         Text(
          //           "4",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 35),
          //         ),
          //         Text(
          //           "Moderate",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 15),
          //         ),
          //       ],
          //     ),
          //     Stack(
          //       children: [
          //         Container(
          //           height: 4,
          //           decoration: BoxDecoration(
          //               gradient:
          //               LinearGradient(
          //                   colors: [
          //                     Colors
          //                         .lightBlueAccent
          //                         .withOpacity(
          //                         0.5),
          //                     Colors
          //                         .purpleAccent
          //                   ])),
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(
          //               left: getWidth(
          //                   312 / 8)),
          //           height: 4,
          //           width: 4,
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               border: Border.all(
          //                   color: Colors
          //                       .black,
          //                   width: 1)),
          //         )
          //       ],
          //     ),
          //   ],
          // ),
        )
    );
  }
}
