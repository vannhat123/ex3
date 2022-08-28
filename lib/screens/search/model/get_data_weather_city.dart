import 'dart:convert';
import 'package:flutter/services.dart';
import 'models.dart';

class GetDataWeatherCity {
  GetDataWeatherCity();
  Future<List<WeatherCity>> getData() async {
    final String response =
        await rootBundle.loadString('assets/e2_list_weather_by_city.json');
    final reponseData = json.decode(response) as List;
    List<WeatherCity> list = reponseData.map((dto) {
      return WeatherCity.fromJson(dto);
    }).toList();
    return list;
  }
}
