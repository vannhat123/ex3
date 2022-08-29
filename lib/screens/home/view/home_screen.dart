import 'package:excersie2/const/consts.dart';
import 'package:excersie2/screens/home/model/models.dart';
import 'package:excersie2/screens/detail/view/detail_screen.dart';
import 'package:excersie2/screens/home/view/form_weather_forecast.dart';
import 'package:excersie2/screens/search/view/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_painter_bottom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GetDataWeatherForeCast getDataWeatherForeCast = GetDataWeatherForeCast();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: getHeight(812),
            child: Image.asset(
              MyImages.BACKGROUND_HOME,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: getHeight(812),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: getHeight(115),
                      ),
                       Text(
                        "IKeja",
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                      ),
                       Text(
                        "19°",
                        style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 90,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                      const Text(
                        "Mostly Clear",
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                      const Text(
                        "H:24°  L:18°",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                    child: SizedBox(
                  height: 1,
                )),
                Stack(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 3, right: 18, left: 18),
                      decoration:const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(26, 49, 74, 1),
                            Color.fromRGBO(18, 81, 83, 1),

                            Color.fromRGBO(26, 49, 74, 1),
                            Color.fromRGBO(14, 58, 65, 1),
                            Color.fromRGBO(15, 47, 56, 1),
                            Color.fromRGBO(15, 47, 56, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45)),
                      ),
                      height: getHeight(360),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              margin: const EdgeInsets.all(6),
                              decoration: const BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              height: 5,
                              width: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Hourly forcast",
                                style: TextStyle(
                                    color: Colors.white30, fontSize: 16),
                              ),
                              Text(
                                "Weekly forecast",
                                style: TextStyle(
                                    color: Colors.white30, fontSize: 16),
                              ),
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getHeight(360),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          CustomPainterBottom(),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black87)),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            left: 18, top: 65, bottom: 10),
                        height: getHeight(130),
                        child: FutureBuilder(
                          future: getDataWeatherForeCast.getData(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              var parseData =
                                  snapshot.data as List<WeatherForecast>;
                              //   return Container();
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: parseData.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var weartherIndex = parseData[index];
                                    return FormWeartherForecast(
                                        weatherForecast: weartherIndex);
                                  });
                            } else {
                              //    return const CircularProgressIndicator();
                            }

                            return const CircularProgressIndicator();
                          },
                        )),
                    Container(
                        margin:
                            EdgeInsets.only(top: getHeight(260), bottom: 10),
                        height: getHeight(80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, DetailScreen.routeName),
                              icon: const Icon(Icons.location_pin,
                                  color: Colors.white,
                                  size: 25,
                                  shadows: [
                                    BoxShadow(
                                      spreadRadius: 5,
                                      color: Colors.black87,
                                      blurRadius: 10,
                                    ),
                                  ]),
                            ),
                            InkWell(
                              child: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 3,
                                          color: Colors.black54,
                                          blurRadius: 5,
                                        ),
                                      ]),
                                  child: Icon(
                                    Icons.add,
                                    color: MyColors.SUB_COLOR2,
                                    size: 48,
                                  )),
                            ),
                            IconButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, SearchScreen.routeName),
                              icon: const Icon(Icons.menu_rounded,
                                  color: Colors.white,
                                  size: 25,
                                  shadows: [
                                    BoxShadow(
                                      spreadRadius: 5,
                                      color: Colors.black87,
                                      blurRadius: 10,
                                    ),
                                  ]),
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
