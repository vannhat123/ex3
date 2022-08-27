import 'dart:convert';
import 'package:flutter/services.dart';
import 'models.dart';

class GetDataWeatherForeCast {
  GetDataWeatherForeCast();
  Future<List<WeatherForecast>> getData() async {
    final String response =
        await rootBundle.loadString('assets/e2_list_weather_forecast.json');
    final reponseData = json.decode(response) as List;
    List<WeatherForecast> list = reponseData.map((dto) {
      return WeatherForecast.fromJson(dto);
    }).toList();
    return list;
  }
}
