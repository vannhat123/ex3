import 'package:excersie2/const/consts.dart';
import 'package:excersie2/screens/detail/model/get_data_weather_forecast.dart';
import 'package:excersie2/screens/detail/model/models.dart';
import 'package:flutter/material.dart';

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
                      const Text(
                        "IKeja",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        "19 ◦",
                        style: TextStyle(color: Colors.white, fontSize: 80),
                      ),
                      const Text(
                        "Mostly Clear",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const Text(
                        "H:24  L:18",
                        style: TextStyle(color: Colors.white, fontSize: 14),
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
                      decoration: BoxDecoration(
                        color: MyColors.PRIMARY_COLOR1,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45)),
                      ),
                      height: getHeight(330),
                      child: Column(
                        children: [
                          const Center(
                            child: Icon(
                              Icons.linear_scale_outlined,
                              size: 20,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.location_pin,
                                  color: Colors.white,
                                  size: 25,
                                  shadows: [
                                    BoxShadow(
                                      spreadRadius: 5,
                                      color: Colors.black87,
                                      blurRadius: 10,
                                    ),
                                  ]),
                              InkWell(
                                child: Container(
                                    padding: const EdgeInsets.all(4.0),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 5,
                                            color: Colors.black87,
                                            blurRadius: 10,
                                          ),
                                        ]),
                                    child: Icon(
                                      Icons.add,
                                      color: MyColors.SUB_COLOR2,
                                      size: 50,
                                    )),
                              ),
                              const Icon(Icons.menu_rounded,
                                  color: Colors.white,
                                  size: 25,
                                  shadows: [
                                    BoxShadow(
                                      spreadRadius: 5,
                                      color: Colors.black87,
                                      blurRadius: 10,
                                    ),
                                  ]),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
                              return const SizedBox();
                            }
                          },
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

class FormWeartherForecast extends StatelessWidget {
  WeatherForecast weatherForecast;

  FormWeartherForecast({Key? key, required this.weatherForecast})
      : super(key: key);

  bool checkTime(var time) {
    if (int.parse(time) > 12) {
      return false;
    } else {
      return true;
    }
  }

  var weatherImage = MyImages.CLEAR;

  bool checkWeatherImage(var image) {
    if (image == "clear") {
      weatherImage = MyImages.CLEAR;
      return true;
    } else if (image == "cloudy") {
      weatherImage = MyImages.CLOUDY;
      return true;
    } else if (image == "fast wind") {
      weatherImage = MyImages.FASTWIND;
      return true;
    } else if (image == "mid rain") {
      weatherImage = MyImages.MIDRAIN;
      return true;
    } else if (image == "night") {
      weatherImage = MyImages.NIGHT;
      return true;
    } else if (image == "showers") {
      weatherImage = MyImages.SHOWER;
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white30),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: MyColors.PRIMARY_COLOR1,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              spreadRadius: 2,
              color: Colors.black38,
              blurRadius: 3,
              offset: Offset(3, 0.5))
        ],
      ),
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Text(
            checkTime(weatherForecast.time!.substring(11, 13))
                ? "${weatherForecast.time!.substring(11, 13)}am"
                : "${int.parse(weatherForecast.time!.substring(11, 13)) - 12}pm",
            style: const TextStyle(color: Colors.white, fontSize: 11),
          ),
          checkWeatherImage(weatherForecast.weatherStateName)
              ? SizedBox(
                  width: 25,
                  child: Image.asset(
                    weatherImage,
                    fit: BoxFit.cover,
                  ),
                )
              : SizedBox(),
          Text(
            "${weatherForecast.temp!}",
            style: const TextStyle(color: Colors.white, fontSize: 11),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
