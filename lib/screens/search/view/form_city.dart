import 'package:excersie2/const/consts.dart';
import 'package:excersie2/screens/search/model/models.dart';
import 'package:excersie2/screens/search/view/custom_painter_shape.dart';
import 'package:flutter/material.dart';
class FormCity extends StatelessWidget {
  FormCity({Key? key, required this.weatherCity}) : super(key: key);
  WeatherCity weatherCity;
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: getWidth(15),left: 5,right: 5),
      height: getHeight(200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Stack(
        children: [
          const CustomPainterShape(),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             const SizedBox(width: 1,),
             checkWeatherImage(weatherCity.weatherStateName) ?  Image.asset(
               weatherImage,
               width: getWidth(140),
               fit: BoxFit.cover,
             ): const SizedBox(),
           ],
         ),
         Container(
           padding:  EdgeInsets.all(getWidth(40)),
           child:  Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                     "${weatherCity.temp}°",
                     style: const TextStyle(color: Colors.white, fontSize: 40),
                   ),
                   const SizedBox(),
                 ],
               ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "H:${weatherCity.maxTemp}°L:${weatherCity.minTemp}°",
                    style: const TextStyle(color: Colors.white30, fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${weatherCity.city}, ${weatherCity.region}",
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        "${weatherCity.weatherStateName}",
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  )
                ],
              )
             ],
           ),
         )
        ],
      )
    );
  }
}