import 'package:excersie2/const/color.dart';
import 'package:excersie2/const/consts.dart';
import 'package:excersie2/screens/detail/view/draw_circle.dart';
import 'package:excersie2/screens/detail/view/form_container_square.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const routeName = '/detail_screen';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          color: MyColors.PRIMARY_COLOR1,
          height: getHeight(812),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 5,
              ),
              Column(
                children: const [
                  Text(
                    "Montreal",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "19°|Mostly Clear",
                    style: TextStyle(color: Colors.white54, fontSize: 14),
                  )
                ],
              ),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      gradient: RadialGradient(
                          center: Alignment.center,
                          colors: [
                            Color.fromRGBO(56, 31, 92, 1),
                            Color.fromRGBO(33, 24, 58, 1)
                          ])),
                  height: getHeight(650),
                  child: Column(
                    children: [
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: getHeight(48)),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Colors.lightBlueAccent.withOpacity(0.4),
                          Colors.white12.withOpacity(0.1)
                        ])),
                      ),
                      Expanded(
                          child: Container(
                              margin:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: ListView(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.indigoAccent
                                                    .withOpacity(0.54),
                                                width: 0.7),
                                            color: MyColors.SUB_COLOR2,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(25)),
                                            gradient: const LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Colors.purpleAccent,
                                                  Colors.indigoAccent,
                                                ])),
                                        height: getHeight(200),
                                        width: getWidth(375),
                                        child: Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              color: MyColors.SUB_COLOR2,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(25))),
                                          height: getHeight(198),
                                          width: getWidth(373),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.ac_unit,
                                                    size: 15,
                                                    color: Colors.white30,
                                                  ),
                                                  Text(
                                                    " AIR QUALITY",
                                                    style: TextStyle(
                                                        color: Colors.white30,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              const Text(
                                                "3-Low Health Risk",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              Stack(
                                                children: [
                                                  Container(
                                                    height: 4,
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                                colors: [
                                                          Colors.lightBlueAccent
                                                              .withOpacity(0.5),
                                                          Colors.purpleAccent
                                                        ])),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left:
                                                            getWidth(312 / 5)),
                                                    height: 4,
                                                    width: 4,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                            color: Colors.black,
                                                            width: 1)),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                  height: 1,
                                                  child: ListView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    children: [
                                                      Row(
                                                        // Dashed line
                                                        children: [
                                                          for (int i = 0;
                                                              i < getWidth(200);
                                                              i++)
                                                            Container(
                                                              width: 5,
                                                              height: 1,
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border(
                                                                  bottom:
                                                                      BorderSide(
                                                                    width: 1,
                                                                    color: i % 2 ==
                                                                            0
                                                                        ? Colors
                                                                            .deepPurpleAccent
                                                                            .withOpacity(
                                                                                0.2)
                                                                        : Colors
                                                                            .transparent,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Text(
                                                    'See more',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    size: 15,
                                                    color: Colors.white30,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FormContainerSquare(
                                              component: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.sunny,
                                                        size: 12,
                                                        color: Colors.white30,
                                                      ),
                                                      Text(
                                                        " UV INDEX",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white30,
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: const [
                                                      Text(
                                                        "4",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 35),
                                                      ),
                                                      Text(
                                                        "Moderate",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        height: 3.5,
                                                        decoration: BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                                    colors: [
                                                              Colors
                                                                  .lightBlueAccent
                                                                  .withOpacity(
                                                                      0.5),
                                                              Colors
                                                                  .purpleAccent
                                                            ])),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: getWidth(
                                                                312 / 8)),
                                                        height: 3.5,
                                                        width: 3.5,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black,
                                                                width: 1)),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                FormContainerSquare(
                                                    component: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: const [
                                                            Icon(
                                                              Icons
                                                                  .sunny_snowing,
                                                              size: 12,
                                                              color: Colors
                                                                  .white30,
                                                            ),
                                                            Text(
                                                              " SUNRISE",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white30,
                                                                  fontSize: 12),
                                                            )
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "5:28 AM",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  getWidth(30)),
                                                        ),
                                                      ],
                                                    ),
                                                    const Text(
                                                      "Sunset: 7:25PM",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                )),
                                                Container(
                                                  width: getWidth(162),
                                                  margin: EdgeInsets.only(
                                                      top: getHeight(140)),
                                                  height: 2.5,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Colors.white24),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        //    alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FormContainerSquare(
                                              component: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.add_chart_rounded,
                                                        size: 12,
                                                        color: Colors.white30,
                                                      ),
                                                      Text(
                                                        " WIND",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white30,
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Stack(
                                                        children: [
                                                          DrawCircle(),
                                                          Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                      .all(18),
                                                              height:
                                                                  getWidth(75),
                                                              width:
                                                                  getWidth(75),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  const Text(
                                                                    "N",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            13),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      const Text(
                                                                        "W",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 13),
                                                                      ),
                                                                      Column(
                                                                        children: const [
                                                                          Text(
                                                                            "9.7",
                                                                            style:
                                                                                TextStyle(color: Colors.white, fontSize: 15),
                                                                          ),
                                                                          Text(
                                                                            "km/h",
                                                                            style:
                                                                                TextStyle(color: Colors.white, fontSize: 10),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const Text(
                                                                        "E",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 13),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  const Text(
                                                                    "S",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            13),
                                                                  ),
                                                                ],
                                                              ))
                                                        ],
                                                      ))
                                                ],
                                              ),
                                            ),
                                            FormContainerSquare(
                                              component: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Icon(
                                                            Icons.water_drop,
                                                            size: 12,
                                                            color:
                                                                Colors.white30,
                                                          ),
                                                          Text(
                                                            " RAINFALL",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white30,
                                                                fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        "1.8 mm",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize:
                                                                getWidth(30)),
                                                      ),
                                                      const Text(
                                                        "in last hour",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    "1.2 mm expected in next 24h",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FormContainerSquare(
                                              component: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Icon(
                                                            Icons
                                                                .device_thermostat,
                                                            size: 12,
                                                            color:
                                                                Colors.white30,
                                                          ),
                                                          Text(
                                                            " FEELS LIKE",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white30,
                                                                fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "19°",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 35),
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    "19° expected in next 24h",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              ),
                                            ),
                                            FormContainerSquare(
                                              component: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Icon(
                                                            Icons.water,
                                                            size: 12,
                                                            color:
                                                                Colors.white30,
                                                          ),
                                                          Text(
                                                            " HUMIDITY",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white30,
                                                                fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "90%",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 35),
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    "90% expected in next 24h",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )))
                    ],
                  ))
            ],
          )),
    );
  }
}
