import 'package:excersie2/const/consts.dart';
import 'package:excersie2/screens/home/model/models.dart';
import 'package:flutter/material.dart';

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
    if (image != null) {
      if (image == "clear") {
        weatherImage = MyImages.CLEAR;
      } else if (image == "cloudy") {
        weatherImage = MyImages.CLOUDY;
      } else if (image == "fast wind") {
        weatherImage = MyImages.FASTWIND;
      } else if (image == "mid rain") {
        weatherImage = MyImages.MIDRAIN;
      } else if (image == "night") {
        weatherImage = MyImages.NIGHT;
      } else if (image == "showers") {
        weatherImage = MyImages.SHOWER;
      }
      return true;
    }
    return false;
  }

  bool checkBackground(var temp){
    if(temp !=null){
      if(temp.toString() == "22.1") {
        return true;
      }
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
        color: checkBackground(weatherForecast.temp)? Colors.deepPurple :MyColors.PRIMARY_COLOR1,
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
            "${weatherForecast.temp!}°",
            style: const TextStyle(color: Colors.white, fontSize: 11),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
